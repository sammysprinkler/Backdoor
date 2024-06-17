#!/bin/bash
# Wfuzz - Web application brute-forcer
# Options:
# -w : Wordlist
# -u : URL with FUZZ marker
# --hc : Hide response code

# Usage: wfuzz -w <wordlist> -u <target_url/FUZZ> --hc <hide_code>
# Example script
wfuzz -w /path/to/wordlist.txt -u http://example.com/FUZZ --hc 404
