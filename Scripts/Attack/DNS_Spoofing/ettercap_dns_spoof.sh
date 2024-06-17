#!/bin/bash
# Ettercap - DNS Spoofing tool
# Options:
# -T : Text mode
# -q : Quiet mode
# -i : Interface

# Usage: ettercap -T -q -i <interface> -P dns_spoof
# Example script
ettercap -T -q -i eth0 -P dns_spoof
