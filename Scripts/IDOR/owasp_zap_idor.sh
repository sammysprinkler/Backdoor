#!/bin/bash
# OWASP ZAP - Automated IDOR Testing with OWASP ZAP
# Options:
# -u : Target URL
# -s : ZAP session file

# Usage: owasp_zap_idor.sh <target_url> <zap_session_file>
# Example script
# owasp_zap_idor.sh http://example.com zap_session.session

# Check if OWASP ZAP is installed
if ! command -v zap-cli &> /dev/null
then
    echo "OWASP ZAP could not be found, please install it first."
    exit
fi

# Ensure parameters are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <target_url> <zap_session_file>"
    exit 1
fi

TARGET_URL=$1
ZAP_SESSION=$2

echo "Starting OWASP ZAP IDOR test on $TARGET_URL with session $ZAP_SESSION"

# Perform IDOR test with OWASP ZAP
zap-cli quick-scan --spider -u $TARGET_URL --session $ZAP_SESSION

echo "OWASP ZAP IDOR test completed."
