#!/bin/bash
# Nikto - Web server scanner
# This script uses Nikto to scan for vulnerabilities on web servers.
# Options:
# -h : Host to scan
# -output : Output file

HOST=$1
OUTPUT=$2

if [ -z "$HOST" ] || [ -z "$OUTPUT" ]; then
  echo "Usage: $0 <host> <output_file>"
  exit 1
fi

nikto -h $HOST -output $OUTPUT
