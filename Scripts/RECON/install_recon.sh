#!/bin/bash

# Update the system
sudo apt update
sudo apt upgrade -y

# Install necessary packages
sudo apt install -y amass assetfinder waybackurls subfinder httprobe gowitness massdns aquatone nuclei

# Verify installations
echo "Verifying installations..."

if command -v amass &> /dev/null; then
    echo "Amass installed successfully."
else
    echo "Amass installation failed."
fi

if command -v assetfinder &> /dev/null; then
    echo "Assetfinder installed successfully."
else
    echo "Assetfinder installation failed."
fi

if command -v waybackurls &> /dev/null; then
    echo "Waybackurls installed successfully."
else
    echo "Waybackurls installation failed."
fi

if command -v subfinder &> /dev/null; then
    echo "Subfinder installed successfully."
else
    echo "Subfinder installation failed."
fi

if command -v httprobe &> /dev/null; then
    echo "Httprobe installed successfully."
else
    echo "Httprobe installation failed."
fi

if command -v gowitness &> /dev/null; then
    echo "Gowitness installed successfully."
else
    echo "Gowitness installation failed."
fi

if command -v massdns &> /dev/null; then
    echo "MassDNS installed successfully."
else
    echo "MassDNS installation failed."
fi

if command -v aquatone &> /dev/null; then
    echo "Aquatone installed successfully."
else
    echo "Aquatone installation failed."
fi

if command -v nuclei &> /dev/null; then
    echo "Nuclei installed successfully."
else
    echo "Nuclei installation failed."
fi

echo "All necessary packages have been installed and verified."
