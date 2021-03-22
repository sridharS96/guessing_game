README.md:guessinggame.sh
	echo "# **THE GUESSING GAME** " > README.md
	date >> README.md
	echo -n "## Number of lines:">> README.md
	cat guessinggame.sh | wc -l >> README.md
