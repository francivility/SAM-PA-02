#!/bin/bash
# names.sh formats a first and last name in several ways
# Author: France Mhary Jasareno, BSIT 4C

read -p "First name: " fname
read -p "Last name: " lname

fname_lower=${fname,,}
fname_cap=${fname_lower^}

lname_lower=${lname,,}
lname_cap=${lname_lower^}

greeting="Hello, "
greeting+="$fname_cap"
greeting+="!"

fullname="$fname $lname"

echo "$greeting"
echo "Full name  : $fullname"
echo "Length     : ${#fullname} characters"
echo "Uppercase  : ${fullname^^}"
echo "Lowercase  : ${fullname,,}"
echo "Capitalized: $fname_cap $lname_cap"
echo "Username   : ${fname,,}.${lname,,}"