#!/bin/bash
# DNS Enumeration using dnsenum
# Options:
# --enum : Perform a comprehensive DNS enumeration
# -f : Specify a file containing subdomains to be checked
# -o : Output to a file

# Usage: dnsenum --enum <target_domain> -f <subdomains_file> -o <output_file>

# Example script
dnsenum --enum example.com -f subdomains.txt -o dns_output.txt
