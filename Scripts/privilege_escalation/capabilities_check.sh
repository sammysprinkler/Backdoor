#!/bin/bash
# Capabilities Check - Check for file capabilities
# Options:
# None

# Usage: capabilities_check.sh
# Example script
# capabilities_check.sh

echo "Starting Capabilities Check"

# Perform Capabilities Check
getcap -r / 2>/dev/null

echo "Capabilities Check completed."
