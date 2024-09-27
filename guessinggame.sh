#!/usr/bin/env bash

function guess_files {
    local file_count=$(ls -1 | wc -l)
    local guess=-1

    echo "How many files are in the current directory?"

    while [[ $guess -ne $file_count ]]; do
        read -p "Enter your guess: " guess
        if [[ $guess -lt $file_count ]]; then
            echo "Your guess is too low."
        elif [[ $guess -gt $file_count ]]; then
            echo "Your guess is too high."
        else
            echo "Congratulations! You guessed the correct number of files: $file_count"
        fi
    done
}

guess_files
