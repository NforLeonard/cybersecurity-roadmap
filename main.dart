import 'dart:io';

class CareerPath {
  const CareerPath({
    required this.title,
    required this.meaning,
    required this.work,
    required this.skills,
    required this.firstSteps,
    required this.project,
  });

  final String title;
  final String meaning;
  final String work;
  final List<String> skills;
  final List<String> firstSteps;
  final String project;
}

const careerPaths = <CareerPath>[
  CareerPath(
    title: 'SOC analyst',
    meaning: 'SOC means Security Operations Center. Analysts monitor systems and investigate security alerts.',
    work: 'Review alerts and logs, decide what is suspicious, document findings, and escalate incidents.',
    skills: [
      'Networking and operating-system basics',
      'Log analysis and SIEM concepts',
      'Clear incident notes',
    ],
    firstSteps: [
      'Learn common network protocols',
      'Practice reading Linux and Windows logs',
      'Study alert triage and incident lifecycles',
    ],
    project: 'Create a small sample log dataset, write detection queries, and document how you investigated each alert.',
  ),
  CareerPath(
    title: 'Penetration tester',
    meaning: 'A penetration tester (pentester) performs authorized security tests to find and report weaknesses.',
    work: 'Agree on a test scope, examine systems for weaknesses, validate findings safely, and deliver remediation advice.',
    skills: [
      'Networking and web fundamentals',
      'Linux and scripting',
      'Methodical testing and technical writing',
    ],
    firstSteps: [
      'Learn HTTP, DNS, and basic shell use',
      'Study web security concepts and the OWASP Top 10',
      'Use intentionally vulnerable labs and follow their rules',
    ],
    project: 'Write a report for a deliberately vulnerable lab: scope, evidence, impact, and practical fixes.',
  ),
  CareerPath(
    title: 'GRC analyst',
    meaning: 'GRC means Governance, Risk, and Compliance. This work helps an organization manage security responsibilities and obligations.',
    work: 'Assess risks, maintain policies and evidence, support audits, and track whether controls are working.',
    skills: [
      'Careful writing and communication',
      'Risk assessment',
      'Security frameworks and evidence management',
    ],
    firstSteps: [
      'Learn confidentiality, integrity, and availability',
      'Explore NIST Cybersecurity Framework concepts',
      'Practice describing a risk and a suitable control',
    ],
    project: 'Build a simple risk register for a fictional small business, including risks, owners, and treatment plans.',
  ),
  CareerPath(
    title: 'Security engineer / cloud security',
    meaning: 'Security engineers build and operate protections. Cloud security focuses on services and workloads hosted in cloud platforms.',
    work: 'Improve identity controls, harden systems, automate security checks, and help teams deploy services safely.',
    skills: [
      'Operating systems and networking',
      'Scripting and automation',
      'Cloud identity, logging, and configuration',
    ],
    firstSteps: [
      'Get comfortable with one operating system and a scripting language',
      'Learn identity and access management basics',
      'Use a free cloud learning environment and review its security guidance',
    ],
    project: 'Document a secure configuration for a small demo service, including access rules, logging, and recovery.',
  ),
  CareerPath(
    title: 'Application security',
    meaning: 'Application security (AppSec) helps software teams prevent, find, and fix security flaws in applications.',
    work: 'Review designs and code, improve secure development practices, and help prioritize and remediate vulnerabilities.',
    skills: [
      'Programming and web fundamentals',
      'Threat modeling',
      'Secure code review and clear collaboration',
    ],
    firstSteps: [
      'Learn one programming language and how web apps work',
      'Study common application risks',
      'Practice fixing issues in intentionally vulnerable training apps',
    ],
    project: 'Threat-model a small demo application and show how a code or configuration change reduces a risk.',
  ),
  CareerPath(
    title: 'Incident response and forensics',
    meaning: 'Incident responders coordinate the investigation and containment of security incidents; forensics focuses on preserving and analyzing evidence.',
    work: 'Triage incidents, preserve evidence, determine what happened, coordinate recovery, and record lessons learned.',
    skills: [
      'Log analysis',
      'Evidence handling and timelines',
      'Calm communication and documentation',
    ],
    firstSteps: [
      'Learn incident response phases',
      'Practice building a timeline from sample logs',
      'Understand evidence integrity and chain of custody',
    ],
    project: 'Analyze a provided training scenario and write a timeline, impact summary, and recovery recommendations.',
  ),
];

const foundations = <String>[
  'Networking: IP addresses, ports, DNS, HTTP, routing, and basic troubleshooting.',
  'Operating systems: Linux command line, Windows basics, users, permissions, processes, and logs.',
  'Security principles: confidentiality, integrity, availability, authentication, authorization, and least privilege.',
  'Scripting: automate small tasks with Python, Bash, PowerShell, or a language you already know.',
  'Communication: explain evidence, risk, and recommended fixes in concise notes.',
];

void main() {
  stdout.writeln('Cybersecurity Career Roadmap');

  while (true) {
    stdout.writeln('\n1. Core foundations');
    stdout.writeln('2. Explore career paths');
    stdout.writeln('0. Exit');
    stdout.write('Choose an option: ');

    final choice = stdin.readLineSync()?.trim();
    switch (choice) {
      case '1':
        _showList('Core foundations', foundations);
      case '2':
        _showCareerPaths();
      case '0':
      case null:
        stdout.writeln(
          'Keep learning, and only test systems you are authorized to use.',
        );
        return;
      default:
        stdout.writeln('Please choose 1, 2, or 0.');
    }
  }
}

void _showCareerPaths() {
  stdout.writeln('\nCareer paths');
  for (var index = 0; index < careerPaths.length; index++) {
    stdout.writeln('${index + 1}. ${careerPaths[index].title}');
  }
  stdout.write('Choose a path number, or press Enter to return: ');

  final input = stdin.readLineSync()?.trim();
  final index = int.tryParse(input ?? '') ?? 0;
  if (index < 1 || index > careerPaths.length) return;

  final path = careerPaths[index - 1];
  stdout.writeln('\n${path.title}');
  stdout.writeln('Meaning: ${path.meaning}');
  stdout.writeln('Typical work: ${path.work}');
  _showList('Useful skills', path.skills);
  _showList('First learning steps', path.firstSteps);
  stdout.writeln('Portfolio idea: ${path.project}');
}

void _showList(String heading, List<String> items) {
  stdout.writeln('\n$heading');
  for (final item in items) {
    stdout.writeln('- $item');
  }
}
