#!/bin/bash
# account.sh looks up a username and describes its account type
# Author: France Mhary Jasareno, BSIT 4C

read -p "Username: " username

if id "$username" &>/dev/null; then
    uid=$(id -u "$username")
    if (( uid == 0 )); then
        echo "$username (UID $uid) is the root administrator"
    elif (( uid >= 1000 )); then
        echo "$username (UID $uid) is a regular user"
    else
        echo "$username (UID $uid) is a system account"
    fi
else
    echo "$username: no such user on $HOSTNAME"
fi