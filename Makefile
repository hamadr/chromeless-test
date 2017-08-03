.DEFAULT_GOAL := all
dep:
	docker run --rm -v "$$PWD:/usr/src/app" -w "/usr/src/app" node:8-alpine yarn install
build:
	docker build -t chromeless-test .
run:
	docker run --rm --name "chromeless-test" -v "$$PWD:/usr/src/app" -w "/usr/src/app" -e "CHROME_PATH=/usr/lib/chromium/" chromeless-test node index.js
all: dep build run
