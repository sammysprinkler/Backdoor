#!/bin/bash
# Hashcat - Advanced password recovery
# Options:
# -m : Hash type
# -a : Attack mode
# -o : Output file

# Usage: hashcat -m <hash_type> -a <attack_mode> <hash_file> <wordlist>
# Example script
hashcat -m 0 -a 0 hashes.txt /path/to/wordlist.txt -o hashcat_output.txt
