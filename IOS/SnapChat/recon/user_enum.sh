#!/bin/bash
# User Enumeration
# Usage: user_enum.sh <url>

URL=$1

if [ -z "$URL" ]; then
    echo "Usage: $0 <url>"
    exit 1
fi

echo "Starting user enumeration on: $URL"

# Using usernames for user enumeration
usernames -u $URL -o users.txt

echo "User enumeration completed. Results saved in users.txt"
