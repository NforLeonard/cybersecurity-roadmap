#include <algorithm>
#include <cctype>
#include <cstdlib>
#include <filesystem>
#include <fstream>
#include <iostream>
#include <stdexcept>
#include <string>
#include <vector>

#include <openssl/evp.h>

namespace fs = std::filesystem;

static std::string sha256_hex(const std::string& text) {
    unsigned char digest[EVP_MAX_MD_SIZE];
    unsigned int digest_length = 0;
    if (EVP_Digest(text.data(), text.size(), digest, &digest_length,
                   EVP_sha256(), nullptr) != 1) {
        throw std::runtime_error("OpenSSL SHA-256 calculation failed");
    }

    static const char hex[] = "0123456789abcdef";
    std::string result;
    result.reserve(digest_length * 2);
    for (unsigned int i = 0; i < digest_length; ++i) {
        result.push_back(hex[digest[i] >> 4]);
        result.push_back(hex[digest[i] & 0x0f]);
    }
    return result;
}

static std::string lowercase(std::string value) {
    std::transform(value.begin(), value.end(), value.begin(),
                   [](unsigned char c) { return static_cast<char>(std::tolower(c)); });
    return value;
}

static bool is_sha256_hex(const std::string& value) {
    return value.size() == 64 &&
           std::all_of(value.begin(), value.end(), [](unsigned char c) {
               return std::isxdigit(c) != 0;
           });
}

static std::string shell_quote(const std::string& value) {
    std::string quoted = "'";
    for (char c : value) {
        if (c == '\'') {
            quoted += "'\\''";
        } else {
            quoted += c;
        }
    }
    quoted += "'";
    return quoted;
}

static void print_success_logo() {
    const char* home = std::getenv("HOME");
    if (home == nullptr || *home == '\0') {
        std::cerr << "Warning: HOME is unset; cannot locate the success logo.\n";
        return;
    }

    const fs::path logo = fs::path(home) / "cybersecurity_club_labs/ghost_logo.sh";
    std::error_code ec;
    if (!fs::is_regular_file(logo, ec) || ec) {
        std::cerr << "Warning: success logo not found: " << logo << '\n';
        return;
    }

    const std::string command = "sh " + shell_quote(logo.string());
    if (std::system(command.c_str()) != 0) {
        std::cerr << "Warning: could not run the success logo script.\n";
    }
}

static bool collect_wordlist_files(const fs::path& path,
                                   std::vector<fs::path>& files) {
    std::error_code ec;
    if (fs::is_regular_file(path, ec)) {
        files.push_back(path);
        return true;
    }
    if (ec || !fs::is_directory(path, ec) || ec) {
        std::cerr << "Error: wordlist path is not a readable file or directory: "
                  << path << '\n';
        return false;
    }

    fs::recursive_directory_iterator it(path, fs::directory_options::skip_permission_denied, ec);
    const fs::recursive_directory_iterator end;
    if (ec) {
        std::cerr << "Error: cannot read wordlist directory: " << ec.message() << '\n';
        return false;
    }
    for (; it != end; it.increment(ec)) {
        if (ec) {
            std::cerr << "Warning: skipped an unreadable entry: " << ec.message() << '\n';
            ec.clear();
            continue;
        }
        std::error_code type_error;
        if (it->is_regular_file(type_error) && !type_error) {
            files.push_back(it->path());
        }
    }
    std::sort(files.begin(), files.end());
    return !files.empty();
}

int main(int argc, char* argv[]) {
    std::string target_hash;
    fs::path wordlist_path;
    bool have_hash = false;
    bool have_wordlist = false;

    for (int i = 1; i < argc; ++i) {
        const std::string option = argv[i];
        if ((option == "-arg1" || option == "--hash") && i + 1 < argc) {
            target_hash = argv[++i];
            have_hash = true;
        } else if ((option == "-arg2" || option == "--wordlist") && i + 1 < argc) {
            wordlist_path = argv[++i];
            have_wordlist = true;
        } else {
            std::cerr << "Unknown option or missing option value: " << option << '\n';
            std::cerr << "Usage: " << argv[0]
                      << " -arg1 <sha256-hash> -arg2 <wordlist-file-or-directory>\n";
            return 2;
        }
    }

    if (!have_hash || !have_wordlist) {
        std::cerr << "Usage: " << argv[0]
                  << " -arg1 <sha256-hash> -arg2 <wordlist-file-or-directory>\n";
        return 2;
    }

    target_hash = lowercase(target_hash);
    if (!is_sha256_hex(target_hash)) {
        std::cerr << "Error: -arg1 must be a 64-character SHA-256 hex digest.\n";
        return 2;
    }

    std::vector<fs::path> files;
    if (!collect_wordlist_files(wordlist_path, files)) {
        std::cerr << "No wordlist files found.\n";
        return 2;
    }

    std::size_t lines_checked = 0;
    for (const fs::path& file : files) {
        std::ifstream input(file);
        if (!input) {
            std::cerr << "Warning: cannot open " << file << '\n';
            continue;
        }

        std::string candidate;
        std::size_t line_number = 0;
        while (std::getline(input, candidate)) {
            ++line_number;
            if (!candidate.empty() && candidate.back() == '\r') {
                candidate.pop_back(); // accept Windows CRLF wordlists
            }
            if (candidate.empty()) {
                continue;
            }
            ++lines_checked;
            if (sha256_hex(candidate) == target_hash) {
                print_success_logo();
                std::cout << "Match: " << candidate << "\n"
                          << "Found in: " << file << ':' << line_number << "\n";
                return 0;
            }
        }
        if (input.bad()) {
            std::cerr << "Warning: read error in " << file << '\n';
        }
    }

    std::cout << "No match found after checking " << lines_checked
              << " candidate(s).\n";
    return 1;
}
