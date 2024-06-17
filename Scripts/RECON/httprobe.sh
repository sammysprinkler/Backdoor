#!/bin/bash
# Httprobe - Take a list of domains and probe for working HTTP and HTTPS servers
# Options:
# None

# Usage: cat <input_file> | httprobe

# Example script
cat subdomains.txt | httprobe > httprobe_output.txt
