#!/bin/bash
# Cryptojacking Combined Script
# Uses XMRig for cryptomining and monitoring.

POOL=$1
WALLET=$2

if [ -z "$POOL" ] || [ -z "$WALLET" ]; then
  echo "Usage: $0 <pool_url> <wallet_address>"
  exit 1
fi

echo "Running XMRig for cryptomining..."
xmrig -o $POOL -u $WALLET -p x -k
