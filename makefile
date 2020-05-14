all: README.md
	

README.md: guessinggame.sh
	echo "# guessinggame.sh" > README.md
	echo "## $$(date '+%A %D')" >> README.md
	echo "Number of lines: $$(wc -l guessinggame.sh | grep -Eo '[0-9]+')" >> README.md

clean:
	rm README.md

