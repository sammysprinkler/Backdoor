#!/bin/bash
# crt.sh - Enumerate subdomains using Certificate Transparency logs
# Options:
# None

# Usage: crtsh <target_domain>

# Example script
curl -s https://crt.sh/?q=%25.example.com | grep -oP '>\K[^<]+' | grep example.com > crtsh_output.txt
