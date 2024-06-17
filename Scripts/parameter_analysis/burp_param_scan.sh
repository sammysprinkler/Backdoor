#!/bin/bash
# Burp Suite - Parameter Analysis using Burp Suite
# Options:
# -u : Target URL
# -b : Burp Suite session file

# Usage: burp_param_scan.sh <target_url> <burp_session_file>
# Example script
# burp_param_scan.sh http://example.com burp_session.json

# Check if burp is installed
if ! command -v burp &> /dev/null
then
    echo "Burp Suite could not be found, please install it first."
    exit
fi

# Ensure parameters are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <target_url> <burp_session_file>"
    exit 1
fi

TARGET_URL=$1
BURP_SESSION=$2

echo "Starting parameter analysis on $TARGET_URL using Burp Suite session $BURP_SESSION"

# Perform parameter analysis
burp -u $TARGET_URL -b $BURP_SESSION

echo "Burp Suite parameter analysis completed."
