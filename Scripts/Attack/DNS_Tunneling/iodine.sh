#!/bin/bash
# Iodine - DNS Tunneling
# Options:
# -f : Configuration file
# -P : Password

# Usage: iodine.sh <domain> <password>
# Example script
# iodine.sh example.com mypassword

# Check if iodine is installed
if ! command -v iodine &> /dev/null
then
    echo "iodine could not be found, please install it first."
    exit
fi

# Ensure parameters are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <domain> <password>"
    exit 1
fi

DOMAIN=$1
PASSWORD=$2

echo "Starting DNS tunneling using domain $DOMAIN with password $PASSWORD"

# Perform DNS tunneling
iodine -f -P $PASSWORD $DOMAIN

echo "DNS tunneling completed."
