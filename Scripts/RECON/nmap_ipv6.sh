#!/bin/bash
# Nmap - Network Mapper for scanning IPv6 targets
# Options:
# -6 : Enable IPv6 scanning
# -sS : TCP SYN scan
# -sV : Version detection
# -p : Port range to scan (e.g., -p 1-65535)
# -iL : Input from list of hosts/networks
# -oA : Output to all formats (Nmap, XML, and Grepable)
# --version-all : Enable all version scanning features
# --max-retries : Set the number of retries (default 10)
# -T4 : Set timing template (higher is faster)
# -Pn : Treat all hosts as online
# -n : Never do DNS resolution
# --reason : Display the reason a port is in a particular state
# -vvv : Increase verbosity level

# Usage: sudo nmap -6 -sSV -p- -iL <target_list> -oA <output_name> --version-all --max-retries <retries> -T4 -Pn -n --reason -vvv

# Example script
# Replace <target_list> with the path to your list of targets
sudo nmap -6 -sSV -p- -iL targets.txt -oA example_Iv6 --version-all --max-retries 3 -T4 -Pn -n --reason -vvv
