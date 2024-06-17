#!/bin/bash
# OWASP ZAP - Automated web application scanner
# Options:
# -daemon : Run ZAP in daemon mode
# -port : Port to listen on
# -config : Configuration file

# Usage: zap.sh -daemon -port <port> -config <config_file>
# Example script
zap.sh -daemon -port 8080 -config zap_config.conf
