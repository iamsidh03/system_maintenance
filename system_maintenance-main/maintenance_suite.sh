#!/bin/bash

# System Maintenance Suite
# A menu-driven tool to run backup, cleanup, and log monitoring scripts

while true; do
    clear
    echo "=========================================="
    echo "       SYSTEM MAINTENANCE SUITE"
    echo "=========================================="
    echo "1. Run Backup Script"
    echo "2. Run Cleanup Script"
    echo "3. Run Log Monitoring Script"
    echo "4. Exit"
    echo "------------------------------------------"
    read -p "Enter your choice (1-4): " choice

    case $choice in
        1)
            echo "Running Backup Script..."
            ./backup.sh
            read -p "Press Enter to continue..."
            ;;
        2)
            echo "Running Cleanup Script..."
            ./update_cleanup.sh
            read -p "Press Enter to continue..."
            ;;
        3)
            echo "Running Log Monitoring Script..."
            ./log_monitor.sh
            read -p "Press Enter to continue..."
            ;;
        4)
            echo "Exiting System Maintenance Suite. Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid choice! Please enter 1-4."
            read -p "Press Enter to try again..."
            ;;
    esac
done
