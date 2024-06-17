#!/bin/bash
# Social Mapper
# This script runs Social Mapper to correlate social media profiles.

python3 social_mapper.py -f <format> -i <input> -m <mode> -fb -tw -li -ig -o <output_folder>
# Example
python3 social_mapper.py -f csv -i names.csv -m fast -fb -tw -li -ig -o social_mapper_output
