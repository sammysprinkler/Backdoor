#!/bin/bash
# Tunshell - Shell over HTTP(S)
# Options:
# -u : URL
# -s : Shell type

# Usage: tunshell.sh <url> <shell_type>
# Example script
# tunshell.sh https://example.com bash

# Check if tunshell is installed
if ! command -v tunshell &> /dev/null
then
    echo "tunshell could not be found, please install it first."
    exit
fi

# Ensure parameters are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <url> <shell_type>"
    exit 1
fi

URL=$1
SHELL_TYPE=$2

echo "Starting shell over HTTP(S) with URL $URL and shell type $SHELL_TYPE"

# Perform tunneling
tunshell -u $URL -s $SHELL_TYPE

echo "Shell over HTTP(S) completed."
