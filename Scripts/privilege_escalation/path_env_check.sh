#!/bin/bash
# PATH Environment Check - Check for writable directories in PATH
# Options:
# None

# Usage: path_env_check.sh
# Example script
# path_env_check.sh

echo "Starting PATH Environment Check"

# Perform PATH Environment Check
for dir in $(echo $PATH | tr ':' ' '); do
    if [ -w $dir ]; then
        echo "Writable directory in PATH: $dir"
    fi
done

echo "PATH Environment Check completed."
