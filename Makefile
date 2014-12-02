deps:
	curl -L https://raw.githubusercontent.com/rlidwka/sinopia/master/conf/default.yaml -o config.yaml

build:
	docker build -t drewwells/sinopia .

publish:
	docker push drewwells/docker-sinopia

all: deps
