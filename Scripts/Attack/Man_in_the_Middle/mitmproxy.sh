#!/bin/bash
# mitmproxy - Man-in-the-Middle Proxy
# Options:
# -T : Transparent proxy mode
# -i : Interface to use

# Usage: mitmproxy.sh <interface>
# Example script
# mitmproxy.sh eth0

# Check if mitmproxy is installed
if ! command -v mitmproxy &> /dev/null
then
    echo "mitmproxy could not be found, please install it first."
    exit
fi

# Ensure interface is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <interface>"
    exit 1
fi

INTERFACE=$1

echo "Starting MITM proxy on interface $INTERFACE"

# Perform MITM proxying
mitmproxy -T --mode transparent --listen-port 8080 -i $INTERFACE

echo "MITM proxying completed."
