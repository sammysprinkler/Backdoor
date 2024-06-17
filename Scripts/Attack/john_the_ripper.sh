#!/bin/bash
# John the Ripper - Password cracker
# Options:
# --wordlist : Path to wordlist
# --format : Hash format

# Usage: john --wordlist=<wordlist> <hash_file>
# Example script
john --wordlist=/path/to/wordlist.txt --format=raw-md5 hashes.txt
