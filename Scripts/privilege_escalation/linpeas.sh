#!/bin/bash
# LinPEAS - Linux Privilege Escalation Script
# Options:
# -a : Perform all checks

# Usage: linpeas.sh
# Example script
# linpeas.sh

# Check if linpeas.sh is present
if [ ! -f "linpeas.sh" ]; then
    echo "linpeas.sh not found, please download it first."
    exit
fi

echo "Starting LinPEAS privilege escalation scan"

# Perform LinPEAS scan
bash linpeas.sh -a

echo "LinPEAS scan completed."
