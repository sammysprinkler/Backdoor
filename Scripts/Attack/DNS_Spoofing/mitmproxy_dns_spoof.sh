#!/bin/bash
# mitmproxy - DNS Spoofing
# Options:
# -T : Transparent proxy mode
# -i : Interface to use

# Usage: mitmproxy_dns_spoof.sh <interface> <script>
# Example script
# mitmproxy_dns_spoof.sh eth0 dns_spoof.py

# Check if mitmproxy is installed
if ! command -v mitmproxy &> /dev/null
then
    echo "mitmproxy could not be found, please install it first."
    exit
fi

# Ensure parameters are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <interface> <script>"
    exit 1
fi

INTERFACE=$1
SCRIPT=$2

echo "Starting DNS spoofing on interface $INTERFACE using script $SCRIPT"

# Perform DNS spoofing
mitmproxy -T --mode transparent --listen-port 8080 -i $INTERFACE --scripts $SCRIPT

echo "DNS spoofing completed."
