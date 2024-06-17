#!/bin/bash
# Gobuster - Directory/File & DNS busting tool
# Options:
# -u : URL/domain
# -w : Path to wordlist
# -t : Number of concurrent threads (default: 10)
# -o : Output file

# Usage: gobuster dir -u <target_url> -w <wordlist> -t <threads> -o <output_file>

# Example script
gobuster dir -u http://example.com -w /path/to/wordlist.txt -t 50 -o gobuster_output.txt
