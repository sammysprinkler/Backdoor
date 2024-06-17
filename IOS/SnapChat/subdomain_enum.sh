#!/bin/bash
# Subdomain Enumeration
# Usage: subdomain_enum.sh <domain>

DOMAIN=$1

if [ -z "$DOMAIN" ]; then
    echo "Usage: $0 <domain>"
    exit 1
fi

echo "Starting subdomain enumeration for: $DOMAIN"

# Using subfinder for subdomain enumeration
subfinder -d $DOMAIN -o subdomains.txt

echo "Subdomain enumeration completed. Results saved in subdomains.txt"
