#!/bin/bash
# Aircrack-ng - Brute Force WPA/WPA2 Passphrases
# Options:
# -w : Path to wordlist file
# -b : Target BSSID
# <capture_file> : Path to capture file

# Usage: aircrack_ng.sh <capture_file> -w <wordlist_file> -b <bssid>
# Example script
# aircrack_ng.sh capture.cap -w rockyou.txt -b 00:11:22:33:44:55

# Check if aircrack-ng is installed
if ! command -v aircrack-ng &> /dev/null
then
    echo "aircrack-ng could not be found, please install it first."
    exit
fi

# Ensure parameters are provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <capture_file> -w <wordlist_file> -b <bssid>"
    exit 1
fi

CAPTURE_FILE=$1
WORDLIST=$2
BSSID=$3

echo "Starting WPA/WPA2 brute force attack"

# Perform brute force attack
aircrack-ng -w $WORDLIST -b $BSSID $CAPTURE_FILE

echo "WPA/WPA2 brute force attack completed."
