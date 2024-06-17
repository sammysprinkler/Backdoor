#!/bin/bash
# ParamSpider - Parameter Discovery Tool
# Options:
# -d : Target domain

# Usage: paramspider.sh <target_domain>
# Example script
# paramspider.sh example.com

# Check if paramspider is installed
if ! command -v paramspider &> /dev/null
then
    echo "paramspider could not be found, please install it first."
    exit
fi

# Ensure target domain is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <target_domain>"
    exit 1
fi

TARGET_DOMAIN=$1

echo "Starting parameter analysis on $TARGET_DOMAIN"

# Perform parameter analysis
paramspider -d $TARGET_DOMAIN

echo "Parameter analysis completed."
