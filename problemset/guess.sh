#!/bin/bash
# guess.sh picks a random number from 1 to 20 and prompts the user until guessed
# Author: France Mhary Jasareno, BSIT 4C

secret=$((RANDOM % 20 + 1))
guess=0
tries=0

echo "I am thinking of a number from 1 to 20."

until (( guess == secret )); do
    read -p "Your guess: " guess
    ((tries++))

    if (( guess < secret )); then
        echo "Too low."
    elif (( guess > secret )); then
        echo "Too high."
    fi
done

echo "Correct! The number was $secret. You got it in $tries tries."