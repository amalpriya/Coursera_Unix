make_readme:
	echo "Coursera-Unix Project" >> README.md
	echo "Date and Time : "`date` >>README.md
	echo "Number of Lines : "`wc -l < guessinggame.sh` >> README.md