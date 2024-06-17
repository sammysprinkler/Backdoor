#!/bin/bash
# Port Scanning
# Usage: port_scan.sh <ip_address>

IP_ADDRESS=$1

if [ -z "$IP_ADDRESS" ]; then
    echo "Usage: $0 <ip_address>"
    exit 1
fi

echo "Starting port scan for: $IP_ADDRESS"

# Using nmap for port scanning
nmap -sV -p- $IP_ADDRESS -oN ports.txt

echo "Port scan completed. Results saved in ports.txt"
