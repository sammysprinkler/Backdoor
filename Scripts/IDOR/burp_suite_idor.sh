#!/bin/bash
# Burp Suite - Automated IDOR Testing with Burp Suite
# Options:
# -u : Target URL
# -b : Burp Suite session file

# Usage: burp_suite_idor.sh <target_url> <burp_session_file>
# Example script
# burp_suite_idor.sh http://example.com burp_session.json

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

echo "Starting Burp Suite IDOR test on $TARGET_URL with session $BURP_SESSION"

# Perform IDOR test with Burp Suite
burp -u $TARGET_URL -b $BURP_SESSION

echo "Burp Suite IDOR test completed."
