 
 README.md: guessinggame.sh
	touch README.md
	echo "# Matthew's Guessinggame" > README.md
	echo $$(date) >> README.md
	echo " \n" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
