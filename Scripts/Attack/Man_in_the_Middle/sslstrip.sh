#!/bin/bash
# sslstrip - SSL Stripping
# Options:
# -l : Listening port

# Usage: sslstrip.sh <port>
# Example script
# sslstrip.sh 8080

# Check if sslstrip is installed
if ! command -v sslstrip &> /dev/null
then
    echo "sslstrip could not be found, please install it first."
    exit
fi

# Ensure port is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <port>"
    exit 1
fi

PORT=$1

echo "Starting SSL stripping on port $PORT"

# Perform SSL stripping
sslstrip -l $PORT

echo "SSL stripping completed."
