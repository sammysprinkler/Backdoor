#!/bin/bash
# Ptunnel - ICMP Tunneling
# Options:
# -p : Proxy port
# -d : Destination IP

# Usage: ptunnel.sh <proxy_port> <destination_ip>
# Example script
# ptunnel.sh 8080 192.168.1.1

# Check if ptunnel is installed
if ! command -v ptunnel &> /dev/null
then
    echo "ptunnel could not be found, please install it first."
    exit
fi

# Ensure parameters are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <proxy_port> <destination_ip>"
    exit 1
fi

PROXY_PORT=$1
DEST_IP=$2

echo "Starting ICMP tunneling with proxy port $PROXY_PORT to destination $DEST_IP"

# Perform ICMP tunneling
ptunnel -p $PROXY_PORT -d $DEST_IP

echo "ICMP tunneling completed."
