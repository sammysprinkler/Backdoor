#!/bin/bash
# NFS Shares Check - Check for no_root_squash option
# Options:
# None

# Usage: nfs_shares_check.sh
# Example script
# nfs_shares_check.sh

echo "Starting NFS Shares Check"

# Perform NFS Shares Check
showmount -e 2>/dev/null | grep "no_root_squash"

echo "NFS Shares Check completed."
