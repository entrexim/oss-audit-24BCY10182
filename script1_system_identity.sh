#!/bin/bash
# Script 1: System Identity Report
# Author: [Your Name] | Course: Open Source Software
# Chosen Software: VLC Media Player

# --- Variables ---
STUDENT_NAME="Your Name Here"      # ← Change this
SOFTWARE_CHOICE="VLC Media Player"

# --- System info ---
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d'"' -f2)
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
CURRENT_TIME=$(date '+%d %B %Y, %I:%M %p')

# --- Display ---
echo "========================================"
echo "  Open Source Audit — $STUDENT_NAME"
echo "  Software Under Audit: $SOFTWARE_CHOICE"
echo "========================================"
echo "Distribution : $DISTRO"
echo "Kernel       : $KERNEL"
echo "Logged in as : $USER_NAME ($HOME_DIR)"
echo "Uptime       : $UPTIME"
echo "Current Time : $CURRENT_TIME"
echo ""
echo "This system runs on Linux, which is licensed under GPL v2 — the same spirit of freedom that VLC follows."
echo "========================================"


