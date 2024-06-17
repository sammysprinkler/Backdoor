#!/bin/bash
# dnsspoof - DNS Spoofing
# Options:
# -i : Interface to use
# -f : Hosts file for spoofing

# Usage: dnsspoof.sh <interface> <hosts_file>
# Example script
# dnsspoof.sh eth0 hosts.txt

# Check if dnsspoof is installed
if ! command -v dnsspoof &> /dev/null
then
    echo "dnsspoof could not be found, please install it first."
    exit
fi

# Ensure parameters are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <interface> <hosts_file>"
    exit 1
fi

INTERFACE=$1
HOSTS_FILE=$2

echo "Starting DNS spoofing on interface $INTERFACE using hosts file $HOSTS_FILE"

# Perform DNS spoofing
dnsspoof -i $INTERFACE -f $HOSTS_FILE

echo "DNS spoofing completed."
