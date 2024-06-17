#!/bin/bash
# HTTP Parameter Pollution - Testing for IDOR Vulnerabilities
# Options:
# -u : Target URL
# -p : Parameters to test

# Usage: parameter_pollution_idor.sh <target_url> <parameters>
# Example script
# parameter_pollution_idor.sh http://example.com/api/resource/123 "id=456&id=789"

# Ensure parameters are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <target_url> <parameters>"
    exit 1
fi

TARGET_URL=$1
PARAMETERS=$2

echo "Starting HTTP parameter pollution IDOR test on $TARGET_URL with parameters $PARAMETERS"

# Perform HTTP parameter pollution for IDOR vulnerabilities
curl -X GET -G --data-urlencode "$PARAMETERS" $TARGET_URL

echo "HTTP parameter pollution IDOR test completed."
