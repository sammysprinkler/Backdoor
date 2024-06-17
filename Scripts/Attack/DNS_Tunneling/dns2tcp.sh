#!/bin/bash
# dns2tcp - DNS Tunneling
# Options:
# -c : Configuration file

# Usage: dns2tcp.sh <config_file>
# Example script
# dns2tcp.sh dns2tcp.conf

# Check if dns2tcp is installed
if ! command -v dns2tcp &> /dev/null
then
    echo "dns2tcp could not be found, please install it first."
    exit
fi

# Ensure configuration file is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <config_file>"
    exit 1
fi

CONFIG_FILE=$1

echo "Starting DNS tunneling using configuration file $CONFIG_FILE"

# Perform DNS tunneling
dns2tcp -c $CONFIG_FILE

echo "DNS tunneling completed."
