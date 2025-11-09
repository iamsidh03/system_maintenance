# Bash Scripting Suite for System Maintenance

## Project Information
**Student:** Siddharth Raj  
**Section:** 2241001  
**Registration No:** 2241018037  

---

## Overview
This project is a **Bash-based automation toolkit** designed to simplify common Linux system maintenance tasks.  
It provides a menu-driven interface that allows users to perform backups, clean up the system, monitor logs, and manage setup operations — all with a single command-line tool.

---

## Objective
To automate essential system maintenance operations such as:
- Creating backups of user directories
- Updating and cleaning system packages
- Monitoring system logs for warnings and errors
- Providing a central menu interface for easy execution

The goal is to reduce manual effort, minimize human errors, and ensure a reliable and optimized Linux environment.

---

## Scripts Included

| Script | Description |
|---------|-------------|
| **`setup.sh`** | Installs required packages, creates necessary folders, and configures permissions for log files. |
| **`backup.sh`** | Creates a timestamped compressed backup of the user’s `Documents` and `Desktop` directories. |
| **`update_cleanup.sh`** | Updates the system packages, removes unused dependencies, and displays disk usage summary. |
| **`log_monitor.sh`** | Scans system or sample logs for keywords such as *error*, *fail*, or *warning* and generates an alert file if issues are found. |
| **`maintenance_suite.sh`** | Provides a menu-based interface to run any of the above scripts interactively. |

---

