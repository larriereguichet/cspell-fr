build:
	docker build -t cspell-fr .

test:
	docker run --rm -v $(shell pwd):/workdir cspell-fr README.FR.md

