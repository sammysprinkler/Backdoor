#!/bin/bash
# Nmap - Conduct a SYN scan, scanning all ports, with various options
# Options:
# -sS : TCP SYN scan
# -sV : Version detection
# -p- : Scan all 65535 ports
# --min-parallelism : Set minimum parallelism level
# --min-hostgroup : Minimum number of hosts to scan concurrently
# --max-retries : Set the number of retries (default 10)
# -Pn : Treat all hosts as online
# -n : Never do DNS resolution
# -iL : Input from list of hosts/networks
# -oA : Output to all formats (Nmap, XML, and Grepable)
# --version-all : Enable all version scanning features
# --reason : Display the reason a port is in a particular state

# Usage: nmap -sS -p- --min-parallelism <parallelism> --min-hostgroup <min_hostgroup> --max-retries <retries> -Pn -n -iL <target_list> -oA <output_name> --version-all --reason

# Example script
# Replace <target_list> with the path to your list of targets
nmap -sS -p- --min-parallelism 64 --min-hostgroup 16 --max-retries 3 -Pn -n -iL input_hosts.txt -oA output --version-all --reason
