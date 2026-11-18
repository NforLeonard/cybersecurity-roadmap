
<img src="Screenshot_20261118-121316.png" alt="Linux file system" width="640">
# Directory Guide for `~/machine`


This is a Linux-inspired workspace tree created inside your Termux home. It is a **directory layout for organizing work**, not a real Linux root filesystem: directories such as `proc`, `sys`, and `dev` here are ordinary folders and do not expose kernel devices or system data. Termux applications still use Android and Termux's actual filesystem paths.

## Top-level directories

| Directory | Typical Linux purpose | Useful role in this workspace |
|---|---|---|
| `bin/` | Essential user commands. | A place for small personal scripts; add it to `PATH` only if you intend to run them. |
| `boot/` | Bootloader and kernel startup files. | Reference or notes for boot-related study; it does not boot this device. |
| `dev/` | Device files. | A placeholder for learning the layout; it is not connected to actual devices. |
| `etc/` | System-wide configuration. | Keep workspace-specific configuration and notes here. `etc/ssh/` is available for SSH client configuration samples, but this is not the system SSH config. |
| `.ssh/` | Per-user SSH keys, known hosts, and client config. | Holds your existing SSH data. Keep private keys private; the `~/.ssh` path is a compatibility symlink to this directory. |
| `home/` | Home directories for user accounts. | Separate accounts or lab-workspace examples if needed. Your active home remains `~/machine`. |
| `lib/`, `lib64/` | Shared libraries used by programs. | Reference folders only; put actual Termux libraries in their package-managed locations. |
| `media/` | Removable media mount points. | Organize references or mount notes; it does not mount Android storage by itself. |
| `mnt/` | Temporary mount points. | A place for mount-related documentation or lab examples. |
| `opt/` | Optional, separately organized software. | A good location for self-contained tools, cloned lab projects, and isolated practice material. |
| `proc/` | Process and kernel information exposed by a virtual filesystem. | Documentation/examples only here; the real `/proc` is elsewhere and managed by Android/Linux. |
| `root/` | Home directory for the root account. | A placeholder; this does not grant root access. Avoid storing secrets here. |
| `run/` | Runtime state that is usually temporary. | Scratch state for your own scripts; do not expect system services to read it. |
| `sbin/` | System administration commands. | A reference folder for scripts you administer yourself. It does not make scripts system commands. |
| `srv/` | Data served by local services. | Store content for a local test server, keeping it separate from source and notes. |
| `sys/` | Kernel and device information exposed by a virtual filesystem. | Documentation/examples only; this folder is not the real kernel interface. |
| `tmp/` | Temporary files. | Short-lived scratch files. It has the conventional world-writable sticky-bit mode; clean up your own temporary data. |
| `usr/` | Most userland programs, libraries, and shared data on traditional Linux. | A place to study that organization. It is not Termux's real `/usr`. |
| `var/` | Variable data such as logs, caches, and queues. | Keep workspace logs, generated data, and caches separate from source files. `var/tmp/` is for longer-lived temporary files. |

## `usr/` subdirectories

- `usr/bin/`, `usr/sbin/`: user commands and administration utilities in a conventional Linux layout.
- `usr/lib/`: program libraries; `usr/include/`: development header files.
- `usr/share/`: architecture-independent data such as documentation.
- `usr/src/`: source trees.
- `usr/local/`: locally installed software and its `bin/`, `etc/`, `include/`, `lib/`, `sbin/`, `share/`, and `src/` subdirectories.
- `usr/etc/` is included as a convenient study/workspace folder, but it is **not a standard top-level directory in most Linux distributions**. Normal system-wide configuration is usually under `/etc`.

## `var/` subdirectories

- `var/cache/`: regenerable caches.
- `var/lib/`: persistent application state.
- `var/local/`: variable data for locally installed software.
- `var/lock/`: traditional lock-file location; modern systems often use runtime directories instead.
- `var/log/`: logs for your workspace and lab programs.
- `var/opt/`: variable data for optional software.
- `var/run/`: traditionally runtime state; often a link to `/run` on full Linux systems.
- `var/spool/`: queued work such as mail or print jobs.
- `var/tmp/`: temporary files that may need to survive a reboot on full systems.

Treat every directory in this tree according to its purpose, but remember this is an organizational convention. Creating a folder does not install a service, change system settings, or make it a real mount point.
