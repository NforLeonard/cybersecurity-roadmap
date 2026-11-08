# Linux Roadmap for Cybersecurity

Linux is one of the most useful operating systems to learn for cybersecurity. It is common on servers, cloud infrastructure, containers, and security tools. Linux fundamentals help you inspect system behavior, interpret logs, administer services, automate repetitive work, and understand the environments that security teams protect. The command-line and permission concepts also transfer to other Unix-like systems.

You do not need to memorize every command or use a security-focused distribution as your everyday system. Learn general Linux administration first, then apply it to your chosen cybersecurity role.

This guide is an independent learning path inspired by [roadmap.sh's Linux roadmap](https://roadmap.sh/linux) and its [Cyber Security roadmap](https://roadmap.sh/cyber-security). It is not an official roadmap.sh resource.

## Set up a safe learning environment

- Start with a current Ubuntu or Debian virtual machine, or use WSL if you are on Windows and understand its differences from a full VM.
- Keep the learning machine updated and take snapshots before experimenting with system configuration.
- Use a normal account for everyday work. Learn when administrative privileges are necessary instead of running everything as root.
- Do not expose practice services to the public internet. Keep labs local unless you understand and intend the exposure.
- Kali Linux is a specialized security distribution, not a shortcut to learning Linux. You can learn core Linux skills on a general-purpose distribution first.

## Learning path

### 1. Orientation and help

Learn the terminal, shell prompt, command options, and how to ask the system for help. Become comfortable with `man`, `--help`, and reading command output. Learn the difference between a shell, a terminal emulator, and a command.

**Practice:** Identify your current directory, username, hostname, distribution, and kernel version. Find help for a command without searching the web first.

### 2. Files, directories, and text

Learn the filesystem hierarchy and common locations such as `/home`, `/etc`, `/var`, `/tmp`, and `/usr`. Practice navigating, listing, creating, copying, moving, and removing files. Understand absolute and relative paths, hidden files, wildcards, archives, and symbolic links.

Build fluency with text viewing and searching, standard input and output, redirection, and pipelines. Learn a terminal editor well enough to safely modify a configuration file and keep a backup.

**Practice:** Find a configuration file, inspect it without changing it, search a directory tree for a known string, and save command output to a file.

### 3. Users, groups, and permissions

Understand users, groups, ownership, read/write/execute permissions, and how permissions differ for files and directories. Learn `sudo`, the principle of least privilege, and the risks of broad permissions. Study environment variables, process ownership, and basic access-control concepts.

**Practice:** Create a test directory and two test users in a disposable VM. Configure group access so one user can collaborate while another cannot read the files. Verify the result as each user.

### 4. Packages and system administration

Learn how your distribution installs and updates software. On Debian and Ubuntu, understand APT repositories and the difference between package indexes and installed packages. Learn how to inspect installed software and update the system safely.

Study processes and services: how to inspect them, start and stop a service, check its status, and view its logs. Learn basic system information such as CPU, memory, disk usage, mounted filesystems, and uptime.

**Practice:** Install and remove a harmless package, inspect a running service, and identify the log entries created when you start or stop it.

### 5. Networking on Linux

Learn how to inspect network interfaces, IP addresses, routes, listening sockets, and name resolution. Understand how Linux hosts use DNS, DHCP, TCP/UDP ports, and firewalls. Practice secure remote administration with SSH and understand host keys and key-based authentication.

Useful tools to learn include `ip`, `ss`, `ping`, `traceroute` or `tracepath`, `getent`, `dig`, `curl`, and `ssh`. Availability varies by distribution; learn the purpose of each command, not just its syntax. Pair this stage with the [Networking and CCNA roadmap](NETWORKING-CCNA-ROADMAP.md).

**Practice:** Record the VM's interface addresses and routes, look up a permitted domain, and explain how a request reaches a service. Do not scan networks you do not own or have permission to test.

### 6. Logs and troubleshooting

Learn where applications and services write logs, how the system journal works, and how to filter entries by service and time. Practice correlating timestamps, users, processes, and network events. Check service status before changing configuration.

**Practice:** Use a local service in your VM to generate a normal event, find the corresponding log, and write down what it shows and what it does not prove.

### 7. Shell scripting and automation

Learn Bash variables, quoting, command arguments, exit codes, conditionals, loops, functions, and safe handling of input. Use scripts for small repeatable tasks such as summarizing files or checking service status. Make scripts readable and handle errors deliberately.

**Practice:** Write a script that reports disk space and the status of a chosen local service. Test normal and failure cases. Do not put passwords, API keys, or other secrets in scripts or source control.

### 8. Linux security and hardening

Build an understanding of updates, least privilege, service exposure, secure SSH configuration, firewall policy, file permissions, backups, audit trails, and secret handling. Learn how to check the current state before changing it, and how to recover from a configuration mistake.

**Practice:** Create a simple hardening checklist for your disposable VM, apply one change at a time, and record how you validated the change and how to undo it.

### 9. Apply Linux to a cybersecurity track

- **SOC and incident response:** Practice finding authentication and service events, building timelines, and distinguishing facts from hypotheses.
- **Penetration testing:** Learn Linux administration and networking before using authorized, intentionally vulnerable labs. Keep all testing within the lab's stated scope.
- **GRC:** Learn patch status, user access, service inventory, logging, and how to document evidence and control gaps.
- **Security engineering and cloud:** Add system services, identity, configuration management, containers, and cloud Linux administration as needed.
- **Application security:** Learn processes, file permissions, package dependencies, application logs, and how web services are configured.

## An efficient practice loop

1. Pick one small objective, such as understanding a service log or fixing a permission issue.
2. Read the relevant manual or help output before copying a command.
3. Try it in a disposable VM and note the expected result.
4. Verify what changed and inspect logs or command output.
5. Write a short note in your own words, including any mistake and how you recovered.
6. Revisit the task later without step-by-step instructions.

Short, repeated practice builds command-line fluency more reliably than memorizing large command lists. Keep a personal command notebook, but record what commands do and when they are appropriate, not just one-line recipes.

## Suggested portfolio exercises

- A Linux host inventory with distribution, updates, users, services, open listening sockets, and logging status.
- A service troubleshooting write-up with the symptom, checks performed, log evidence, fix, and verification.
- A least-privilege permissions exercise using test users and non-sensitive sample files.
- A small Bash script with input validation, clear output, exit codes, and documented limitations.
- A hardening checklist for a local VM, with before-and-after evidence and a rollback note.

Keep projects confined to systems you own or are explicitly authorized to administer. Remove personal data and secrets before sharing any output.

## Resources

- [roadmap.sh Linux roadmap](https://roadmap.sh/linux): A visual Linux learning roadmap.
- [Ubuntu documentation](https://help.ubuntu.com/): Installation, desktop, and server documentation.
- [The Linux man-pages project](https://www.kernel.org/doc/man-pages/): Reference manuals for Linux system calls and library interfaces.
- [OverTheWire: Bandit](https://overthewire.org/wargames/bandit/): A beginner-oriented command-line practice environment; follow its current rules and scope.
- [BreachLab](https://breachlab.org/): A hands-on cybersecurity training platform. Its [Ghost track](https://breachlab.org/tracks/ghost) starts with Linux and shell fundamentals before moving into CI/CD security. Treat it as guided lab practice after learning basic system administration, and follow the platform's rules and scope.

## Completion checklist

- Navigate and manage files confidently from the shell.
- Explain ownership and permissions, including when administrative access is needed.
- Install updates and inspect packages, processes, services, and logs.
- Inspect local network configuration and troubleshoot basic connectivity.
- Write and test a small Bash script safely.
- Apply and verify basic hardening changes in a disposable environment.
- Document what you did clearly enough that someone else can reproduce it.