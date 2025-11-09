#!/bin/bash

# System Update and Cleanup Script

echo "-----------------------------------"
echo "Starting System Update and Cleanup"
echo "-----------------------------------"

# Step 1: Update package lists
echo "Updating package lists..."
sudo apt-get update -y

# Step 2: Upgrade installed packages
echo "Upgrading installed packages..."
sudo apt-get upgrade -y

# Step 3: Remove unused dependencies
echo "Cleaning up unnecessary files..."
sudo apt-get autoremove -y
sudo apt-get autoclean -y

# Step 4: Show disk usage summary
echo "-----------------------------------"
echo "Disk space after cleanup:"
df -h | grep -E '^Filesystem|/dev/'
echo "-----------------------------------"

echo "System update and cleanup completed successfully!"
