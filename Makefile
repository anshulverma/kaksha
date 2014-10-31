build = \
	docker build -t anshulverma/$(1) ./docker/$(1); \
	docker push anshulverma/$(1)

baseimage: build.baseimage

kaksha: build.kaksha

build.baseimage:
	$(call build,baseimage)

build.kaksha:
	$(call build,kaksha)

build.all: build.baseimage build.kaksha

.DEFAULT_GOAL := build.all
