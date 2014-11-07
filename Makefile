baseimage: IMAGE=baseimage

kaksha: IMAGE=kaksha

baseimage kaksha: build tag push

build:
	docker build -t anshulverma/$(IMAGE) ./docker/$(IMAGE)

push:
	docker push anshulverma/$(IMAGE):$(TAG)

TAG = $(shell git describe)

tag:
	docker tag anshulverma/baseimage:latest anshulverma/baseimage:$(TAG)

all: baseimage kaksha

.DEFAULT_GOAL := all
