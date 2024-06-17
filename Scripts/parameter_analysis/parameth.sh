#!/bin/bash
# Parameth - Find hidden parameters
# Options:
# -u : Target URL

# Usage: parameth.sh <target_url>
# Example script
# parameth.sh http://example.com

# Check if parameth is installed
if ! command -v parameth &> /dev/null
then
    echo "parameth could not be found, please install it first."
    exit
fi

# Ensure target URL is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <target_url>"
    exit 1
fi

TARGET_URL=$1

echo "Starting hidden parameter search on $TARGET_URL"

# Perform hidden parameter search
parameth -u $TARGET_URL

echo "Hidden parameter search completed."
