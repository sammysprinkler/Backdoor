#!/bin/bash
# MassDNS - High-performance DNS stub resolver
# Options:
# -r : Resolver file
# -t : Number of concurrent queries

# Usage: massdns -r <resolver_file> -t <threads> <input_file>

# Example script
massdns -r resolvers.txt -t 1000 subdomains.txt > massdns_output.txt
