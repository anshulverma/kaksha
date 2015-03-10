baseimage: IMAGE=baseimage

kaksha: IMAGE=kaksha

apache2: IMAGE=apache2

TAG = $(shell git describe)

baseimage kaksha apache2: build tag

build: guard-IMAGE
	docker build -t anshulverma/$(IMAGE) ./$(IMAGE)

tag: build guard-TAG
	docker tag anshulverma/${IMAGE}:latest anshulverma/$(IMAGE):$(TAG)

push: tag
	docker push anshulverma/$(IMAGE):$(TAG)

guard-%:
	@if test "${${*}}" = ""; then \
		echo "Environment variable $* not set"; \
		exit 1; \
	fi

all: baseimage kaksha apache2

.DEFAULT_GOAL := all
