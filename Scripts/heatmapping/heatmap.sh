#!/bin/bash
# Heatmap - Generate a heatmap from a list of IP addresses
# Options:
# <file> : File containing a list of IP addresses

# Usage: heatmap <file>
# Example script
# heatmap ip_addresses.txt

# Check if required tool is installed
if ! command -v heatmap_tool &> /dev/null
then
    echo "heatmap_tool could not be found, please install it first."
    exit
fi

# Ensure file is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <file>"
    exit 1
fi

FILE=$1

echo "Generating heatmap from $FILE"

# Generate heatmap
heatmap_tool -i $FILE -o heatmap_output.png

echo "Heatmap generated: heatmap_output.png"
