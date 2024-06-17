#!/bin/bash
# Role-Based Access Control (RBAC) - Testing for IDOR in Role-Based Access Control
# Options:
# -u : Target URL
# -t : Token
# -r : Role to test

# Usage: role_based_access_idor.sh <target_url> <token> <role>
# Example script
# role_based_access_idor.sh http://example.com/api/resource/123 "Bearer mytoken" "admin"

# Ensure parameters are provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <target_url> <token> <role>"
    exit 1
fi

TARGET_URL=$1
TOKEN=$2
ROLE=$3

echo "Starting IDOR test on $TARGET_URL with token $TOKEN and role $ROLE"

# Perform IDOR test with role-based access
curl -X GET -H "Authorization: $TOKEN" -H "X-Role: $ROLE" $TARGET_URL

echo "Role-based IDOR test completed."
