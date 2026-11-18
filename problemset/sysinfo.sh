#!/bin/bash
# sysinfo.sh prints a short card about this system
# Author: France Mhary Jasareno 4C

echo "===== SYSTEM CARD ====="
echo "User    : $USER"
echo "Hostname: $HOSTNAME"
echo "Today   : $(date '+%A, %B %d, %Y')"
echo "Time    : $(date '+%I:%M %p')"
echo "Folder  : $(pwd)"
echo "======================="