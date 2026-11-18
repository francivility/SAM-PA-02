#!/bin/bash
# score.sh converts a numeric score (0-100) into an equivalent grade and remark
# Author: France Mhary Jasareno, BSIT 4C

read -p "Enter score (0-100): " score

if (( score < 0 || score > 100 )); then
    echo "Invalid score: $score"
elif (( score >= 96 )); then
    echo "Grade 1.00 Excellent"
elif (( score >= 90 )); then
    echo "Grade 1.50 Very Good"
elif (( score >= 85 )); then
    echo "Grade 2.00 Good"
elif (( score >= 80 )); then
    echo "Grade 2.50 Satisfactory"
elif (( score >= 75 )); then
    echo "Grade 3.00 Passed"
else
    echo "Grade 5.00 Failed"
fi