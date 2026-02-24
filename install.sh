#!/usr/bin/env bash

set -e

echo "Installing Superport..."

# Install git if missing
if ! command -v git &> /dev/null; then
  sudo apt update && sudo apt install -y git
fi

# Clone repo
git clone https://github.com/samanyu200/superport.git

# Make executable
chmod +x superport/superport

# Move to global path
sudo mv superport/superport /usr/local/bin/superport

# Cleanup
rm -rf superport

clear
echo "Superport installed successfully!"
echo "Run: superport setup"
