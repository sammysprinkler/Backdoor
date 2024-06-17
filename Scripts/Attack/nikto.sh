#!/bin/bash
# Nikto - Web server scanner
# Options:
# -h : Host to scan
# -output : Output file

# Usage: nikto -h <target_host> -output <output_file>
# Example script
nikto -h http://example.com -output nikto_output.txt
