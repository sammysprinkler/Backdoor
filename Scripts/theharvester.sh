#!/bin/bash
# theharvester - Gather email addresses, PGP keys, subdomains & virtual hosts
# Options:
# -d : Domain to search or company name
# -b : Data source (e.g., google, bing, pgp, linkedin, etc.)
# -l : Limit the number of results to work with (default 500)
# -h : Display help message
# -v : Verify the host name via DNS resolution and search for virtual hosts

# Usage: theharvester -d <target_domain> -b <source> -l <limit>

# Example script
# Target domain to be replaced
theharvester -d zerosec.co.uk -b all -l 1000
