#!/bin/bash
# Evilgrade - Man-in-the-Middle Attack for Software Updates
# Options:
# -m : Module to use

# Usage: evilgrade.sh <module>
# Example script
# evilgrade.sh Java

# Check if evilgrade is installed
if ! command -v evilgrade &> /dev/null
then
    echo "evilgrade could not be found, please install it first."
    exit
fi

# Ensure module is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <module>"
    exit 1
fi

MODULE=$1

echo "Starting Evilgrade with module $MODULE"

# Perform MITM attack for software updates
evilgrade -m $MODULE

echo "Evilgrade attack completed."
