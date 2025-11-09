#!/bin/bash
# Install required tools
sudo apt update && sudo apt install -y tar gzip

# Create folders and logs
sudo mkdir -p /backup
sudo touch /var/log/maintenance.log /var/log/alert.log

# Set permissions
sudo chmod 666 /var/log/maintenance.log /var/log/alert.log

echo "Setup completed successfully!"
