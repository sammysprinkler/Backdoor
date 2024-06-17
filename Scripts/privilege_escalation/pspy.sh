#!/bin/bash
# pspy - Process Snooping
# Options:
# -a : Show all processes

# Usage: pspy.sh
# Example script
# pspy.sh

# Check if pspy is present
if [ ! -f "pspy" ]; then
    echo "pspy not found, please download it first."
    exit
fi

echo "Starting pspy process snooping"

# Perform pspy process snooping
./pspy -a

echo "pspy process snooping completed."
