README.md:
	touch README.md
	echo "workbench" > README.md
	date +%x' '%R >> README.md
	wc -l < guessinggame.sh >> README.md

clean:
	rm README.md

