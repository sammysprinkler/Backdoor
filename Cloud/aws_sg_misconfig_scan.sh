#!/bin/bash
# Automated AWS Security Group Misconfiguration Scanner
# Usage: aws_sg_misconfig_scan.sh

echo "Starting AWS Security Group Misconfiguration Scan..."

# Ensure Prowler is installed
if ! command -v prowler &> /dev/null; then
    echo "Prowler could not be found, please install it first."
    exit 1
fi

# Ensure CloudMapper is installed
if ! command -v cloudmapper &> /dev/null; then
    echo "CloudMapper could not be found, please install it first."
    exit 1
fi

# Run Prowler to check for security group misconfigurations
prowler -g group1 -M csv -n > prowler_report.csv

# Run CloudMapper to visualize security group misconfigurations
cloudmapper.py collect --account my-account
cloudmapper.py report --account my-account

echo "AWS Security Group Misconfiguration Scan completed. Reports generated by Prowler and CloudMapper."