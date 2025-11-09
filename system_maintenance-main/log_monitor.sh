#!/bin/bash

# Log Monitoring Script (Windows version)
# This script checks a sample log file for errors or warnings

LOG_FILE="./sample.log"
KEYWORDS="error|fail|critical|warn"

echo "-----------------------------------"
echo "Starting Log Monitoring Script"
echo "-----------------------------------"

# Create a fake log file for testing (you can remove this part later)
cat > "$LOG_FILE" <<EOL
System started successfully
Network connection established
Disk check completed
Warning: Low disk space on drive C:
Error: Failed to start backup service
All services are running normally
EOL

# Search for issues
grep -iE "$KEYWORDS" "$LOG_FILE" > temp_log_results.txt

if [ -s temp_log_results.txt ]; then
    echo " Alerts found! Check 'temp_log_results.txt' for details."
else
    echo " No issues found in the log file."
    rm temp_log_results.txt
fi

echo "-----------------------------------"
echo "Log monitoring completed successfully"
