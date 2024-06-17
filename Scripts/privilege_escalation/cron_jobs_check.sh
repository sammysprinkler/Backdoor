#!/bin/bash
# Cron Jobs Check - Check for writable cron jobs
# Options:
# None

# Usage: cron_jobs_check.sh
# Example script
# cron_jobs_check.sh

echo "Starting Cron Jobs Check"

# Perform Cron Jobs Check
find /etc/cron* -type f -writable 2>/dev/null

echo "Cron Jobs Check completed."
