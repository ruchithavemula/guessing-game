README.md: guessinggame.sh
	echo "# Guessing Game" > README.md
	echo "Date: $(shell date)" >> README.md
	echo "Number of lines in guessinggame.sh: $$(wc -l < guessinggame.sh)" >> README.md
	echo "## Description" >> README.md
	echo "This is a guessing game where the user has to guess the number of files in the current directory." >> README.md

.PHONY: clean
clean:
	rm -f README.md
