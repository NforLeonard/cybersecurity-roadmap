# Using This Layout for Authorized Security Work

Security work is most manageable when scope, inputs, tools, results, and secrets have clear places. This layout can help you keep an authorized lab or assessment organized. Use it only for systems you own or where you have explicit permission, and follow the agreed scope and rules of engagement.

## A practical workspace pattern

Create a separate directory for each lab or approved engagement. For example:

```text
~/machine/opt/labs/sample-lab/
├── README.md       # scope, authorization, dates, and notes
├── recon/          # permitted discovery results
├── evidence/       # screenshots, sanitized captures, and findings
├── logs/           # tool output and activity logs
├── scripts/        # your own helper scripts
└── reports/        # final report and remediation advice
```

Keep raw input separate from generated output. Record when and how a result was collected so it can be reproduced. Do not put passwords, tokens, private keys, or personal data in reports or source control.

## Where the main directories help

- `opt/`: keeps lab projects and separately obtained tools together, away from your notes and system-managed Termux packages.
- `srv/`: holds files intentionally served by a local test service. Use harmless test data and bind services only as needed.
- `var/log/`: centralizes logs from your own scripts and local lab services, making debugging and review easier.
- `var/tmp/` and `tmp/`: hold temporary datasets and intermediate output. Remove sensitive temporary data when finished.
- `etc/`: stores project configuration templates and operational notes. Keep secrets out of templates; use restrictive permissions for local secret files.
- `bin/` and `usr/local/bin/`: can hold small personal helper scripts. Review scripts before running them and avoid placing untrusted executables on `PATH`.
- `.ssh/`: stores SSH client material. Private keys should remain owner-readable only (commonly mode `600`), and the directory should remain owner-only (commonly mode `700`). Do not share private keys or commit them to a repository.
- `home/`: can separate multiple lab identities or sample data sets when that is useful, without changing your real Android/Termux accounts.
- `proc/`, `sys/`, and `dev/`: are placeholders in this workspace, not live interfaces. Use the real system interfaces only when you understand the effects and have the required access.

## Safe workflow checklist

1. Write down the target, permitted methods, time window, and stop conditions before testing.
2. Use a dedicated lab directory and keep commands and outputs there.
3. Start with passive review and non-invasive checks; increase impact only when the authorization explicitly allows it.
4. Protect collected data, redact sensitive values, and limit access to the people who need it.
5. Report verified findings with reproduction steps, impact, and practical fixes.
6. Stop if you encounter a system or data outside the approved scope.

This folder tree helps with organization and repeatability. It does not provide isolation, anonymity, elevated privileges, or authorization by itself. For potentially risky experiments, use a dedicated virtual machine or isolated lab environment rather than assuming a directory provides containment.
