README.md: guessinggame.sh
	@echo "Generating README.md..."
	@echo "# Guessing Game" > README.md
	@echo "" >> README.md
	@echo "This project was created on: $(shell date)" >> README.md
	@echo "Number of lines of code in guessinggame.sh: $(shell wc -l < guessinggame.sh)" >> README.md