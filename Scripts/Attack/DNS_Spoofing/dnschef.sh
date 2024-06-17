#!/bin/bash
# DNSChef - DNS Spoofing
# Options:
# --fakeip : IP address to spoof
# --fakedomains : Domains to spoof

# Usage: dnschef.sh <interface> <fake_ip> <domains>
# Example script
# dnschef.sh eth0 192.168.1.100 example.com

# Check if dnschef is installed
if ! command -v dnschef &> /dev/null
then
    echo "dnschef could not be found, please install it first."
    exit
fi

# Ensure parameters are provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <interface> <fake_ip> <domains>"
    exit 1
fi

INTERFACE=$1
FAKE_IP=$2
DOMAINS=$3

echo "Starting DNS spoofing on interface $INTERFACE with fake IP $FAKE_IP for domains $DOMAINS"

# Perform DNS spoofing
dnschef --interface=$INTERFACE --fakeip=$FAKE_IP --fakedomains=$DOMAINS

echo "DNS spoofing completed."
