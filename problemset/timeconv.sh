#!/bin/bash
# timeconv.sh turns a number of seconds into hours, minutes, and seconds
# Author: France Mhary Jasareno, BSIT 4C

read -p "Enter seconds: " total_seconds

hours=$((total_seconds / 3600))
minutes=$(((total_seconds % 3600) / 60))
seconds=$((total_seconds % 60))

echo "$total_seconds seconds = $hours hour(s), $minutes minute(s) and $seconds second(s)"