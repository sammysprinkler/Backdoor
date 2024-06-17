#!/bin/bash
# REST API - Manual IDOR Testing for REST APIs
# Options:
# -u : Target URL
# -t : Token
# -d : Data to send in the request

# Usage: rest_api_idor.sh <target_url> <token> <data>
# Example script
# rest_api_idor.sh http://example.com/api/resource/123 "Bearer mytoken" '{"key":"value"}'

# Ensure parameters are provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <target_url> <token> <data>"
    exit 1
fi

TARGET_URL=$1
TOKEN=$2
DATA=$3

echo "Starting manual IDOR test on $TARGET_URL with token $TOKEN"

# Perform IDOR test on REST API
curl -X GET -H "Authorization: $TOKEN" -H "Content-Type: application/json" -d "$DATA" $TARGET_URL

echo "Manual IDOR test completed."
