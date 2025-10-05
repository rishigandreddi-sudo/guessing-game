#!/bin/bash

# Function to get the number of files in the current directory
get_file_count() {
    echo $(ls -1 | wc -l)
}

# Get the correct number of files in the directory
file_count=$(get_file_count)

# Function to ask the user to guess
guess_game() {
    local guess=0

    while [[ $guess -ne $file_count ]]
    do
        echo "How many files are in the current directory?"
        read guess

        if [[ $guess -lt $file_count ]]
        then
            echo "Your guess is too low. Try again."
        elif [[ $guess -gt $file_count ]]
        then
            echo "Your guess is too high. Try again."
        else
            echo "Congratulations! You guessed correctly."
        fi
    done
}

# Run the guessing game
guess_game
