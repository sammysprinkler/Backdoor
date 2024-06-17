#!/bin/bash
# Anew - Managing New Content Discoveries
# Options:
# <file> : File containing new content discoveries

# Usage: anew <file>
# Example script
# anew discoveries.txt

# Check if anew is installed
if ! command -v anew &> /dev/null
then
    echo "anew could not be found, please install it first."
    exit
fi

# Ensure file is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <file>"
    exit 1
fi

FILE=$1

echo "Processing new discoveries from $FILE"

# Process new discoveries
cat $FILE | anew

echo "Processing completed."
