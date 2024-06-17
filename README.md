# Backdoor - Personal Scripts for Vulnerability Testing

Welcome to **Backdoor**, a collection of my personal scripts for vulnerability testing. This repository contains a variety of scripts designed to assist in identifying and exploiting security vulnerabilities in web and mobile applications. These scripts are organized into several categories based on the type of testing they perform.

## Table of Contents

- [Reconnaissance](#reconnaissance)
- [Attacks](#attacks)
- [Content Discovery](#content-discovery)
- [Privilege Escalation](#privilege-escalation)
- [IDORs](#idors)
- [Google Dorking](#google-dorking)
- [DNS Spoofing](#dns-spoofing)
- [DNS Tunneling](#dns-tunneling)
- [Denial of Service](#denial-of-service)
- [Man-in-the-Middle](#man-in-the-middle)
- [Vulnerability Scanning](#vulnerability-scanning)
- [JavaScript Penetration Testing](#javascript-penetration-testing)

## Reconnaissance

Scripts designed for information gathering and reconnaissance, including network scanning, subdomain enumeration, and more.

- `amass.sh` - Subdomain enumeration using Amass
- `assetfinder.sh` - Subdomain discovery using Assetfinder
- `waybackurls.sh` - Fetch URLs from Wayback Machine
- `crtsh.sh` - Fetch subdomains from crt.sh
- `subfinder.sh` - Subdomain discovery using Subfinder

## Attacks

Scripts for executing various types of attacks, including DNS Tunneling, DNS Spoofing, Code Injection, and more.

- `dnscat2.sh` - DNS Tunneling using DNScat2
- `ettercap_dns_spoof.sh` - DNS Spoofing using Ettercap
- `sqlmap.sh` - SQL injection using SQLMap
- `hydra.sh` - Brute force attacks using Hydra

## Content Discovery

Scripts for discovering hidden directories, files, and other resources on web servers.

- `dirb.sh` - Directory brute forcing using DirB
- `gobuster.sh` - Directory and file brute forcing using Gobuster
- `ffuf.sh` - Fuzzing for files and directories using FFUF
- `nikto.sh` - Web server scanning using Nikto

## Privilege Escalation

Scripts for identifying and exploiting privilege escalation vulnerabilities on Linux and Windows systems.

- `linux_priv_esc.sh` - Linux privilege escalation
- `windows_priv_esc.sh` - Windows privilege escalation
- `linpeas.sh` - Linux privilege escalation scanning using LinPEAS
- `sudo_enum.sh` - Enumerate sudo permissions

## IDORs

Scripts for testing Insecure Direct Object References (IDOR) vulnerabilities.

- `burp_suite_idor.sh` - Automated IDOR testing with Burp Suite
- `owasp_zap_idor.sh` - Automated IDOR testing with OWASP ZAP
- `postman_idor.sh` - Automated IDOR testing with Postman
- `rest_api_idor.sh` - Manual IDOR testing for REST APIs

## Google Dorking

Scripts for performing Google Dorking to find sensitive information on the web.

- `email_search.sh` - Search for email addresses
- `filetype_pdf.sh` - Search for PDF files
- `index_of.sh` - Search for directory listings
- `login_pages.sh` - Search for login pages

## DNS Spoofing

Scripts for performing DNS spoofing attacks.

- `ettercap_dns_spoof.sh` - DNS spoofing using Ettercap
- `dnschef.sh` - DNS spoofing using DNSChef
- `bettercap_dns_spoof.sh` - DNS spoofing using Bettercap
- `dnsspoof.sh` - DNS spoofing using dnsspoof

## DNS Tunneling

Scripts for performing DNS tunneling attacks.

- `dnscat2.sh` - DNS tunneling using DNScat2
- `iodine.sh` - DNS tunneling using Iodine
- `dns2tcp.sh` - DNS tunneling using dns2tcp
- `ptunnel.sh` - ICMP tunneling using Ptunnel

## Denial of Service

Scripts for performing Denial of Service (DoS) attacks.

- `slowloris.sh` - DoS attack using Slowloris
- `hping3.sh` - DoS attack using hping3
- `udp_flood.sh` - DoS attack using UDP flood
- `torshammer.sh` - DoS attack using Torshammer

## Man-in-the-Middle

Scripts for performing Man-in-the-Middle (MITM) attacks.

- `ettercap_mitm.sh` - MITM attack using Ettercap
- `bettercap_mitm.sh` - MITM attack using Bettercap
- `mitmproxy.sh` - MITM proxy using mitmproxy
- `wireshark_sniff.sh` - Packet sniffing using Wireshark

## Vulnerability Scanning

Scripts for performing vulnerability scans using various tools.

- `nmap_vuln_scan.sh` - Vulnerability scanning using Nmap
- `openvas_scan.sh` - Vulnerability scanning using OpenVAS
- `nikto_scan.sh` - Web vulnerability scanning using Nikto
- `nessus_scan.sh` - Vulnerability scanning using Nessus

## JavaScript Penetration Testing

Scripts for testing JavaScript code and finding vulnerabilities.

- `dirsearch_js.sh` - Directory searching for JavaScript files
- `retire_js.sh` - Scanning for vulnerable JavaScript libraries
- `njsscan.sh` - Node.js security scan
- `xsser_js.sh` - XSS scanning for JavaScript

## License

This repository is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.

## Disclaimer

These scripts are provided for educational purposes only. Use them at your own risk and always with proper authorization.

---

Feel free to contribute to this repository by submitting pull requests or opening issues. Happy testing!

