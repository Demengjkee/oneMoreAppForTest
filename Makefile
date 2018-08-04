help:
	@echo "make build -- build application"

build:
	docker run -it --rm --name maven-build -v "$(shell pwd)":/usr/src/mymaven -w /usr/src/mymaven maven:3.3-jdk-8 mvn clean install
	docker build -t demoapp .
