#!/bin/bash
# Nuclei - Vulnerability scanner based on customizable templates
# Options:
# -t : Template directory or file
# -l : List of targets
# -o : Output file

# Usage: nuclei -t <template> -l <input_file> -o <output_file>

# Example script
nuclei -t cves/ -l subdomains.txt -o nuclei_output.txt
