#!/bin/bash
# XML Injection - Testing for IDOR Vulnerabilities
# Options:
# -u : Target URL
# -d : XML data to send

# Usage: xml_injection_idor.sh <target_url> <xml_data>
# Example script
# xml_injection_idor.sh http://example.com/api/resource/123 "<data><key>value</key></data>"

# Ensure parameters are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <target_url> <xml_data>"
    exit 1
fi

TARGET_URL=$1
XML_DATA=$2

echo "Starting XML injection IDOR test on $TARGET_URL with XML data $XML_DATA"

# Perform XML injection for IDOR vulnerabilities
curl -X POST -H "Content-Type: application/xml" -d "$XML_DATA" $TARGET_URL

echo "XML injection IDOR test completed."
