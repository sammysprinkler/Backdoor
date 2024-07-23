# Red Team Campaign Setup and Execution

## Key Topics Covered
1. [Windows ATT&CK and APT Groups](#windows-attck-and-apt-groups)
2. [Objectives and Goals](#objectives-and-goals)
3. [Tools and Techniques](#tools-and-techniques)
4. [Setting Up External Servers](#setting-up-external-servers)
5. [Scripts and Automation](#scripts-and-automation)
6. [Exploitation and Installation](#exploitation-and-installation)
7. [Payload Delivery and Obfuscation](#payload-delivery-and-obfuscation)
8. [References](#references)

---

## Windows ATT&CK and APT Groups
- **Documentation**: [Windows ATT&CK](https://attack.mitre.org)
- **APT (Advanced Persistent Threat) Groups**: Detailed APT group activities can be referenced at @cyb3rops.

![Windows ATT&CK Matrix](https://attack.mitre.org/images/mitre_attack_logo.svg)

## Objectives and Goals
- **End Goals of APT**:
  - APT detection
  - Getting a flag on a server
  - Retrieving data from a database
  - TTD (Time to Detect) metrics
- **Public Campaigns**:
  - Identify any public campaign to replicate.
- **Techniques and Plans**:
  - Utilize [MITRE ATT&CK](https://attack.mitre.org) framework.
  - Reference techniques from Red Canary.
  - Techniques: LMRTF, Red Team Canary.

## Tools and Techniques
- **Client Tool Requirements**:
  - COTS (Commercial Off-The-Shelf) offensive tools.
  - Metasploit
  - Cobalt Strike
  - DNS Cat
  - Custom tooling

## Setting Up External Servers
1. **Choose a VPS (Virtual Private Server) Service**:
   - [Digital Ocean](https://www.digitalocean.com)
   - [AWS Lightsail](https://lightsail.aws.amazon.com)
2. **Create an Instance**:
   - Minimum 1GB RAM
   - Use Linux/Unix OS (Ubuntu recommended)
   - Download and configure SSL certificates
   - SSH into the server:
     ```bash
     ssh -i cert ubuntu@[IP]
     ```

## Scripts and Automation
- **Develop Custom Scripts**:
  - IPTables (Firewall rules for managing network traffic)
  - SSL certs (Secure Sockets Layer certificates for encryption)
  - Various tools
- **TrustedSec’s Pentester Framework (PTF)**:
  - Utilize GitHub resources: [PTF](https://github.com/trustedsec/ptf)
  - Scripts for automation and tool integration.

## Exploitation and Installation
1. **Initial Setup**:
   - Gain root access:
     ```bash
     sudo su
     ```
   - Update package lists:
     ```bash
     apt-get update
     ```
   - Install Python:
     ```bash
     apt-get install python
     ```
2. **Clone Pentester Framework**:
   ```bash
   git clone https://github.com/trustedsec/ptf /opt/ptf
   cd /opt/ptf && ./ptf