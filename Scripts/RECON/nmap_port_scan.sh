#!/bin/bash
# Nmap - Scan top 1000 open ports on a target
# Options:
# -sT : TCP connect scan
# --top-ports : Scan top N most common ports
# -oA : Output to all formats (Nmap, XML, and Grepable)

# Usage: nmap -sT <host> --top-ports <number_of_ports> -oA <output_name>

# Example script
# Replace <host> with the target domain or IP
nmap -sT <host> --top-ports 1000 -oA TCP-Top-1k
