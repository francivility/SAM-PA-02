#!/bin/bash
# subject.sh demonstrates basic operations on an indexed array
# Author: France Mhary Jasareno, BSIT 4C

subjects=("CompProg" "ADET" "SAM" "Capstone" "DigitalDesign")

echo "First subject: ${subjects[0]}"
echo "Third subject: ${subjects[2]}"
echo "Last subject : ${subjects[-1]}"
echo "All subjects : ${subjects[@]}"
echo "How many     : ${#subjects[@]}"
echo "Indexes      : ${!subjects[@]}"

subjects+=("Research")
subjects[1]="ADET2"
unset subjects[0]

echo "After changes: ${subjects[@]}"
echo "How many now : ${#subjects[@]}"
declare -p subjects