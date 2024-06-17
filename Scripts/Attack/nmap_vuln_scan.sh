#!/bin/bash
# Nmap - Probe specific port for vulnerabilities
# Options:
# -sS : TCP SYN scan
# --version-all : Enable all version scanning features
# -p : Port range to scan (e.g., -p 11211)
# --min-parallelism : Set minimum parallelism level
# --script=vuln : Use vulnerability detection scripts
# -Pn : Treat all hosts as online
# -n : Never do DNS resolution

# Usage: sudo nmap -sS --version-all -p <port> --min-parallelism <parallelism> --script=vuln <target> -Pn -n

# Example script
# Replace <target> with the target IP
sudo nmap -sS --version-all -p 11211 --min-parallelism 64 --script=vuln 10.0.0.1 -Pn -n
