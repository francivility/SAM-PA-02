#!/bin/bash
# grades.sh manages student grades using an associative array
# Author: France Mhary Jasareno, BSIT 4C

declare -A grade=(
    ["Joaquin"]=78
    ["Hagad"]=92
    ["Noah"]=85
    ["Rogelio"]=88
)

echo "Noah's grade: ${grade[Noah]}"
echo "Names       : ${!grade[@]}"
echo "Grades      : ${grade[@]}"
echo "Students    : ${#grade[@]}"

# Add a fifth student, change one grade, remove one student
grade["Yuzon"]=95
grade["Joaquin"]=81
unset grade["Hagad"]

echo "After changes:"
declare -p grade

read -p "Look up a name: " search_name
if [[ -v grade["$search_name"] ]]; then
    echo "$search_name: ${grade[$search_name]}"
else
    echo "$search_name is not in the list"
fi