# Cybersecurity Career Roadmap

A beginner-friendly guide and interactive Dart console program for exploring cybersecurity jobs and choosing a learning direction. It is designed to help you build fundamentals first, compare roles, and then focus on one track.

The sequence is inspired by the topic-based progression in [roadmap.sh's Cyber Security roadmap](https://roadmap.sh/cyber-security). This project is an independent learning guide, not an official roadmap.sh resource.

For a detailed networking sequence, see the [Networking and CCNA roadmap](NETWORKING-CCNA-ROADMAP.md).
For a focused Linux learning path, see the [Linux roadmap](LINUX-ROADMAP.md).

## Run the program

You need the Dart SDK. From this directory, run:

```sh
dart run main.dart
```

The program has two sections: shared foundations and career paths. It uses only Dart's standard library.

## What the roles mean

Cybersecurity is a broad field, not one job. Titles and responsibilities vary between employers, and teams often share responsibilities.

| Path | Meaning | Typical focus |
| --- | --- | --- |
| SOC analyst | SOC is a Security Operations Center. | Monitor alerts and logs, investigate suspicious activity, and escalate incidents. Often an entry route into defensive security. |
| Penetration tester | A pentester performs an agreed, authorized security test. | Find and validate weaknesses within a defined scope, then report evidence and fixes. Testing without permission is not part of this job. |
| GRC analyst | GRC is Governance, Risk, and Compliance. | Help manage security policies, risk, controls, audits, and evidence. Useful for people who enjoy analysis, writing, and working across teams. |
| Security engineer / cloud security | Engineers build and operate safeguards; cloud security focuses on cloud-hosted systems. | Improve identity and access, system configurations, monitoring, automation, and secure deployments. |
| Application security | Often shortened to AppSec. | Help software teams design, build, review, and maintain more secure applications. Programming is especially useful. |
| Incident response / forensics | Responders investigate security incidents; forensics emphasizes evidence. | Triage incidents, preserve evidence, build timelines, support recovery, and capture lessons learned. |

Other specialties include security architecture, vulnerability management, identity and access management, threat intelligence, security auditing, and security awareness. You do not need to choose a specialty before learning the basics.

## A practical learning sequence

### 1. Build shared foundations

Start here regardless of which job sounds interesting:

- **Networking:** Learn IP addresses, ports, DNS, HTTP, routing, and how to troubleshoot connectivity.
- **Operating systems:** Use the Linux command line and learn Windows basics. Understand files, permissions, users, processes, and logs.
- **Security principles:** Learn confidentiality, integrity, and availability; authentication and authorization; least privilege; and defense in depth.
- **Scripting:** Automate a small task with Python, Bash, PowerShell, or a language you already know. Your Go lessons can also help you practice programming fundamentals.
- **Communication:** Practice explaining what you observed, why it matters, and what action you recommend.

### 2. Explore before specializing

Try small, beginner-level exercises in three different kinds of work:

- **Defensive:** Inspect sample logs, investigate a simulated alert, and write a short incident note.
- **Offensive:** Work only in a purpose-built training lab and learn how a vulnerability is found, reported, and fixed.
- **Risk and governance:** Identify a simple business risk, describe its impact, and suggest a practical control.

Notice which activities you enjoy: investigation, building and automating, testing, coding, or policy and communication. Enjoyment is a useful signal, not a permanent commitment.

### 3. Pick one initial track

Choose one path from the table and study its skills in order. A good first portfolio project should show your reasoning and documentation, not just a tool output. Examples include an alert investigation, an authorized lab report, a risk register, a secure configuration, or an application threat model.

### 4. Build useful programming skills

You do not need to master every language. Start with one scripting language and add others when they support your chosen work:

- **Python:** Recommended first language for general security automation, small utilities, parsing data, and working with APIs. Learn variables, functions, files, exceptions, packages, and HTTP/JSON basics.
- **Bash:** Learn enough to navigate and automate Linux systems: pipelines, quoting, permissions, environment variables, and shell scripts.
- **PowerShell:** Learn the Windows shell and scripting model, including objects, pipelines, cmdlets, and basic system administration. Prioritize it for Windows-heavy roles.
- **SQL:** Learn to read and write queries, filter and join records, and understand how applications interact with databases. It is useful for data analysis and AppSec.
- **JavaScript:** Useful for understanding browser behavior and web applications; go deeper for AppSec or web development.
- **Go:** Continue your current course if systems programming, cloud tools, or reading security tooling interests you. It is valuable, but not a prerequisite for most entry-level roles.

Aim to become productive in Python or a comparable language, and comfortable with the shell used by your target environment. Learn the others to a practical level as your path requires them.

### 5. Acquire cross-role skills

- **Networking:** Addressing, subnetting, DNS, HTTP(S), routing, switching, VPN concepts, and troubleshooting. See the [Networking and CCNA roadmap](NETWORKING-CCNA-ROADMAP.md).
- **Operating systems:** Linux and Windows users, permissions, processes, services, updates, logs, and basic hardening.
- **Identity and access:** Authentication, authorization, multifactor authentication, least privilege, and access review.
- **Security analysis:** Distinguish evidence from assumptions, assess impact and likelihood, and prioritize response or remediation.
- **Tools and data:** Work with command-line tools, logs, version control, and structured data formats such as JSON. Learn security platforms when they fit your track.
- **Documentation and teamwork:** Write reproducible notes, explain tradeoffs to different audiences, and collaborate without overstating findings.
- **Ethics and judgment:** Respect authorization and privacy, understand scope, and follow responsible reporting practices.

### 6. Make your work visible

Keep a small portfolio with project goals, lab scope, steps taken, findings, limitations, and recommendations. Remove secrets and personal data. Be honest about what was simulated, what you personally did, and what you still need to learn. A clear write-up is more valuable than a long list of tools.

## Learning resources

- [roadmap.sh Cyber Security roadmap](https://roadmap.sh/cyber-security): A broad topic map to use alongside this role-oriented guide.
- [roadmap.sh Networking roadmap](https://roadmap.sh/networking): A visual overview of networking topics.
- [roadmap.sh Linux roadmap](https://roadmap.sh/linux): A visual overview of Linux topics.
- [OWASP Top 10](https://owasp.org/www-project-top-ten/): A starting point for common web application security risks.
- [NIST Cybersecurity Framework](https://www.nist.gov/cyberframework): A high-level framework for understanding organizational security outcomes and risk.
- [OverTheWire: Bandit](https://overthewire.org/wargames/bandit/): A hands-on introduction to Linux command-line concepts.
- [TryHackMe learning paths](https://tryhackme.com/paths): Guided, simulated cybersecurity learning exercises; follow each room's rules and scope.

Free resources and platform offerings can change. Check the current terms and learning prerequisites before starting.

## Safety and professional practice

Only scan, test, or access systems when you own them or have explicit permission. For authorized work, agree on the scope and rules before testing, avoid accessing real user data, and stop if activity could cause harm. Use intentionally vulnerable labs for practice. In professional work, follow applicable laws, contracts, and organizational policies, and report findings responsibly.

## Choosing your next step

If you are unsure, start with the shared foundations and try a small sample from SOC work, penetration testing, and GRC. Then choose the path whose day-to-day work interests you most. You can change direction later; skills such as networking, operating systems, clear writing, and sound judgment transfer across the field.