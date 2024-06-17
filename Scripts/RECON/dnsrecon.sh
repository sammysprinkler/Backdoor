#!/bin/bash
# DNSRecon - DNS Enumeration Script
# Options:
# -d : Domain to enumerate
# -a : Perform a DNS zone transfer
# -z : Perform DNSSEC zone walk
# -t : Type of enumeration (std for standard enumeration)

# Usage: dnsrecon -d <domain> -a -z -t std
# Example script
# dnsrecon -d example.com -a -z -t std

# Check if dnsrecon is installed
if ! command -v dnsrecon &> /dev/null
then
    echo "dnsrecon could not be found, please install it first."
    exit
fi

# Ensure domain is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <domain>"
    exit 1
fi

DOMAIN=$1

echo "Starting DNS reconnaissance on $DOMAIN"

# Perform DNS reconnaissance
dnsrecon -d $DOMAIN -a -z -t std

echo "DNS reconnaissance completed."
