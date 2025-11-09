#!/bin/bash

# Backup Script
# This script creates a backup of your home directory

BACKUP_DIR="$HOME/backup_$(date +%Y%m%d_%H%M%S)"
SOURCE_DIR="$HOME"

echo "Starting backup..."
mkdir -p "$BACKUP_DIR"

cp -r "$SOURCE_DIR/Documents" "$BACKUP_DIR"
cp -r "$SOURCE_DIR/Desktop" "$BACKUP_DIR"

echo "Backup completed successfully!"
echo "Backup stored at: $BACKUP_DIR"
