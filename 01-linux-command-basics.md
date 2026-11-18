# Basic Linux Commands

These commands work in many Linux-like shells, including Termux. Run `command --help` or `man command` for details when available.

## Where am I and what is here?

| Command | Use | Example |
|---|---|---|
| `pwd` | Print the current directory. | `pwd` |
| `ls` | List directory contents. | `ls -lah` |
| `cd DIR` | Change directory. | `cd ~/machine/var/log` |
| `cd ..` | Move to the parent directory. | `cd ..` |
| `tree DIR` | Display a directory hierarchy (if installed). | `tree ~/machine` |

## Create, copy, move, and inspect files

| Command | Use | Example |
|---|---|---|
| `mkdir -p DIR` | Create a directory and missing parents. | `mkdir -p ~/machine/opt/labs/demo` |
| `touch FILE` | Create an empty file or update its timestamp. | `touch notes.md` |
| `cp SOURCE DEST` | Copy a file. Add `-r` for directories. | `cp notes.md backup.md` |
| `mv SOURCE DEST` | Move or rename a file. | `mv draft.md final.md` |
| `cat FILE` | Print a small file. | `cat README.md` |
| `less FILE` | Read a file page by page. Press `q` to quit. | `less ~/machine/var/log/example.log` |
| `head -n 20 FILE` | Show the first 20 lines. | `head -n 20 data.txt` |
| `tail -n 20 FILE` | Show the last 20 lines. | `tail -n 20 data.txt` |
| `tail -f FILE` | Follow new lines added to a log. | `tail -f app.log` |

## Find and filter information

| Command | Use | Example |
|---|---|---|
| `find PATH -name PATTERN` | Find files by name. | `find ~/machine -name '*.md'` |
| `grep -n 'TEXT' FILE` | Find matching lines. | `grep -n 'error' app.log` |
| `command | command` | Send one command's output to another. | `cat hosts.txt \| sort -u` |
| `sort FILE` | Sort lines. | `sort names.txt` |
| `wc -l FILE` | Count lines. | `wc -l hosts.txt` |

## System and permissions

| Command | Use | Example |
|---|---|---|
| `whoami` | Show the current account name. | `whoami` |
| `id` | Show user and group identifiers. | `id` |
| `env` | List environment variables. | `env` |
| `chmod MODE FILE` | Change access permissions. | `chmod 600 ~/.ssh/config` |
| `df -h` | Show filesystem space. | `df -h` |
| `du -sh DIR` | Estimate a directory's size. | `du -sh ~/machine/opt` |
| `ps` | Show running processes (options vary). | `ps -ef` |

## Network troubleshooting

| Command | Use | Example |
|---|---|---|
| `ping HOST` | Check basic reachability where ICMP is permitted. | `ping example.org` |
| `curl -I URL` | Fetch response headers from a web server. | `curl -I https://example.org` |
| `ssh USER@HOST` | Connect to a host you are allowed to access. | `ssh user@lab.example` |
| `ssh-keygen` | Create or manage SSH keys. | `ssh-keygen -t ed25519` |

Only scan or test systems when you own them or have explicit permission. Read a command's help before using unfamiliar options. Be especially careful with commands that delete files or change permissions.
