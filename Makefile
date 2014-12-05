REALPREFIX = $(realpath $(PREFIX))

deps:
	curl -L https://raw.githubusercontent.com/rlidwka/sinopia/master/conf/default.yaml -o config.yaml

build:
	docker build -t drewwells/sinopia .

run:
	echo docker "run -v \$\(pwd):/etc/sinopia -it drewwells/sinopia"


all: build run
