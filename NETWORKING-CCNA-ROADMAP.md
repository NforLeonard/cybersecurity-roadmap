# Networking Fundamentals and CCNA Roadmap

A step-by-step study path for building networking fundamentals and preparing for Cisco's CCNA. Work through the concepts in order, configure small labs, and practice explaining how traffic moves. This is an independent study guide, not an official Cisco exam blueprint or a guarantee of exam coverage.

Use the [roadmap.sh Networking roadmap](https://roadmap.sh/networking) as a visual companion. For certification preparation, verify the current objectives on Cisco's [CCNA certification page](https://www.cisco.com/site/us/en/learn/training-certifications/certifications/enterprise/ccna/index.html) and its linked exam topics before scheduling an exam. Exam objectives can change.

## Stage 1: Network foundations

Understand what a network does before memorizing device commands:

- Network types and topologies: LAN, WAN, WLAN, client-server, and peer-to-peer.
- Network devices: switches, routers, wireless access points, firewalls, and modem or gateway roles.
- Network models: OSI layers and the TCP/IP model; know what each layer contributes.
- Encapsulation: how application data is carried inside transport, network, and link-layer headers.
- Ethernet and MAC addressing: frames, MAC addresses, duplex, speed, and basic switching behavior.
- Common services and protocols: ARP, ICMP, DNS, DHCP, TCP, UDP, HTTP(S), SSH, and NTP.
- Cabling and interfaces: copper and fiber concepts, interface status, speed, duplex, and link troubleshooting.

**Practice:** Draw a home or lab network. Trace a DNS lookup and a web request from a client to a remote server, noting what each device and protocol contributes.

## Stage 2: IPv4 addressing and subnetting

Be comfortable calculating and explaining addresses; this is foundational for routing and troubleshooting:

- Binary and decimal conversion for IPv4 octets.
- IPv4 address structure, subnet masks, CIDR prefix notation, and network/broadcast/host addresses.
- Public and private addressing, loopback, link-local, and default gateway concepts.
- Subnetting a network to meet host and network requirements.
- Variable-length subnet masks (VLSM) and summarization basics.
- Default gateway behavior and how a host decides whether a destination is local or remote.

**Practice:** Given a prefix and an IPv4 address, find the network, usable host range, broadcast address, and number of usable hosts. Then create a small addressing plan with multiple subnets.

## Stage 3: IPv6 essentials

- IPv6 notation, hexadecimal groups, compression rules, and prefix lengths.
- Global unicast, link-local, unique local, multicast, and loopback addresses.
- Neighbor Discovery Protocol (NDP), router advertisements, and SLAAC concepts.
- Dual-stack networks and high-level differences from IPv4.
- Basic IPv6 addressing and connectivity checks.

**Practice:** Expand and compress sample IPv6 addresses and identify their type. Configure a small dual-stack lab if your simulator supports it.

## Stage 4: Switching and LANs

- Switch learning and forwarding: MAC address tables and frame handling.
- VLANs: access ports, VLAN membership, and separating broadcast domains.
- Trunks: tagging, 802.1Q concepts, allowed VLANs, and native VLAN considerations.
- Inter-VLAN routing using a router-on-a-stick design or Layer 3 switch concepts.
- Spanning Tree Protocol (STP): why loops are harmful, root bridge election, and port roles/states.
- Link aggregation / EtherChannel: purpose and basic negotiation concepts.
- Basic wireless LAN concepts: access points, SSIDs, channels, authentication, and interference.

**Practice:** Build two VLANs across two switches, configure a trunk, and verify that same-VLAN hosts communicate while different-VLAN hosts need routing.

## Stage 5: Routing and IP connectivity

- Routing tables: connected, local, static, and dynamic routes.
- Longest-prefix match and next-hop selection.
- Static routes, default routes, and floating static route concepts.
- First-hop gateway role and basic redundancy concepts.
- OSPFv2 single-area fundamentals: neighbor relationships, router IDs, and route learning.
- Read and interpret a routing table; trace packet forwarding across multiple networks.
- Basic troubleshooting with `ping` and `traceroute` or platform equivalents.

**Practice:** Connect three routed networks in a simulator. Add a default route and then a basic single-area OSPF configuration. Verify routes and trace end-to-end connectivity.

## Stage 6: Network services

Understand the purpose and the security implications of common services:

- DHCP address assignment, lease concepts, relay, and client configuration.
- DNS name resolution and common record types.
- NAT and PAT concepts and why edge networks use them.
- NTP time synchronization and why consistent timestamps matter for security logs.
- Syslog and SNMP monitoring concepts, including secure configuration considerations.
- QoS purpose and high-level traffic prioritization concepts.
- Basic file transfer and management service concepts.

**Practice:** Capture or inspect a permitted lab traffic trace and identify DHCP, DNS, and NTP exchanges. Explain what data each service provides.

## Stage 7: Device management and security fundamentals

- Secure administrative access with SSH; understand why insecure remote management should be avoided.
- Device identity, local users, privilege levels, and authentication concepts.
- Configuration backups, change records, and secure management-plane access.
- Access control lists (ACLs): reading and applying basic traffic rules; understand order and implicit behavior.
- Port security and Layer 2 protections at a conceptual and configuration level.
- Wireless security modes and strong authentication concepts.
- Common threats such as spoofing, rogue devices, and denial of service at a conceptual level, paired with defensive mitigations.
- Physical security, least privilege, segmentation, and secure operational practices.

**Practice:** Apply a narrow lab ACL and verify both permitted and denied traffic. Record the intended policy before changing the configuration.

## Stage 8: Automation and programmability

- Why network automation helps with consistency and scale.
- Structured data basics: JSON and YAML.
- REST API concepts: requests, responses, authentication, and status codes.
- Controller-based networking and software-defined networking concepts.
- Configuration management and repeatable change workflows.
- Use Python for simple, read-only data handling or API exercises in a lab; understand how to protect credentials.

**Practice:** Parse a sample JSON inventory or query a permitted lab API. Keep the exercise read-only until you understand how changes are authorized and validated.

## Stage 9: Troubleshooting method

Use a repeatable method rather than changing settings at random:

1. Define the symptom, affected devices, scope, and recent changes.
2. Check physical links, interface state, and local configuration.
3. Verify IP address, subnet mask or prefix, gateway, and name resolution.
4. Test progressively: local host, default gateway, remote IP, then hostname or application.
5. Inspect VLAN, trunk, routing, ACL, and service configuration along the path.
6. Make one scoped change at a time, retest, and document the result.

Practice commands depend on the platform. Learn the purpose of interface status, address configuration, ARP/neighbor tables, MAC tables, VLANs, trunks, routing tables, and logs rather than memorizing command output alone.

## Suggested lab sequence

Use Cisco Packet Tracer or another simulator to avoid needing physical hardware. Keep all practice in your own lab or another explicitly authorized environment.

1. One switch and two hosts: inspect addressing, MAC learning, and connectivity.
2. Two VLANs: configure access ports and verify separation.
3. Two switches: configure a trunk and verify VLAN traffic.
4. Add a router or Layer 3 switch: enable inter-VLAN routing.
5. Add a second router: configure static routes, then single-area OSPF.
6. Add DHCP, DNS, and a basic ACL; test intended and unintended paths.
7. Build a final small office topology with IPv4/IPv6 addressing, VLANs, routing, services, and a written troubleshooting log.

For every lab, save a topology diagram, addressing table, configuration notes, verification results, and one paragraph describing what you would improve.

## How to know you are progressing

- You can explain how a packet reaches a destination on the same subnet and on a remote subnet.
- You can subnet IPv4 networks accurately and design a simple addressing plan.
- You can create VLANs and trunks, explain STP's role, and verify inter-VLAN routing.
- You can interpret connected, static, default, and OSPF routes.
- You can explain what DHCP, DNS, NAT, NTP, and ACLs do and how they affect traffic.
- You can troubleshoot methodically and document evidence instead of guessing.
- You can describe basic IPv6 addressing and network automation concepts.

## References

- [roadmap.sh Networking roadmap](https://roadmap.sh/networking): visual topic map for networking fundamentals.
- [roadmap.sh Cyber Security roadmap](https://roadmap.sh/cyber-security): broader security context for networking knowledge.
- [Cisco CCNA certification](https://www.cisco.com/site/us/en/learn/training-certifications/certifications/enterprise/ccna/index.html): current certification information and official exam-topic links.
- [Cisco Packet Tracer](https://www.netacad.com/cisco-packet-tracer): network simulation learning tool.