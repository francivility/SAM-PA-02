#!/bin/bash
# multiplicationtable.sh prints the multiplication table (1 to 10) for a given number
# Author: France Mhary Jasareno, BSIT 4C

read -p "Table of: " num

for i in {1..10}; do
    echo "$num x $i = $((num * i))"
done