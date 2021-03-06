USER=ryancox
REPO=gatling-computer-database
VERSION=1.0.0
TAG=$(USER)/$(REPO):$(VERSION)

clean:
	-docker rmi $(TAG)

build:
	docker build -t $(TAG) .

push: 
	docker login
	docker push $(TAG)

all: clean build push
