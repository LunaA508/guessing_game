#!/usr/bin/env bash
# File: guessinggame.sh

number_of_files=$(ls -1 | wc -l)
input=""

function guess_again {
	if [ $input -gt $number_of_files ]
	then
		echo "Your guess is higher than the actual number of files."
		echo "Please enter a new number:"
		read input
	else
		echo "Your guess is lower than the actual number of files."
		echo "Please enter a new number:"
		read input	
	fi
}

echo "Welcome to the Guessing Game!"
echo "Guess the number of files in this directory"
read input

while [ $input -ne $number_of_files ]
do
	guess_again
done

echo "Congratulations, you guessed the correct number of files: $input!"

