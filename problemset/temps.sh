#!/bin/bash
# temps.sh converts Celsius temperatures to Fahrenheit and describes how they feel
# Author: France Mhary Jasareno, BSIT 4C

c_to_f() {
    local c=$1
    local f=$((c * 9 / 5 + 32))
    echo "$f"
}

feels_like() {
    local c=$1
    if (( c < 15 )); then
        echo "Cold"
    elif (( c <= 27 )); then
        echo "Comfortable"
    elif (( c <= 34 )); then
        echo "Hot"
    else
        echo "Very hot"
    fi
}

for temp in 10 24 31 38; do
    f_val=$(c_to_f "$temp")
    desc=$(feels_like "$temp")
    echo "${temp}C=${f_val}F ($desc)"
done
