#!/bin/bash
# calc.sh performs basic arithmetic operations on two whole numbers
# Author: France Mhary Jasareno, BSIT 4C

read -p "First number: " num1
read -p "Second number: " num2

echo "$num1 + $num2 = $((num1 + num2))"
echo "$num1 - $num2 = $((num1 - num2))"
echo "$num1 * $num2 = $((num1 * num2))"
echo "$num1 / $num2 = $((num1 / num2))"
echo "$num1 % $num2 = $((num1 % num2))"
echo "$num1 ** $num2 = $((num1 ** num2))"