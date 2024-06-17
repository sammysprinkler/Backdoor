#!/bin/bash
# Wireshark - Packet Sniffing
# Options:
# -i : Interface to use
# -k : Start capturing immediately

# Usage: wireshark_sniff.sh <interface>
# Example script
# wireshark_sniff.sh eth0

# Check if wireshark is installed
if ! command -v wireshark &> /dev/null
then
    echo "wireshark could not be found, please install it first."
    exit
fi

# Ensure interface is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <interface>"
    exit 1
fi

INTERFACE=$1

echo "Starting packet sniffing on interface $INTERFACE"

# Perform packet sniffing
wireshark -i $INTERFACE -k

echo "Packet sniffing completed."
