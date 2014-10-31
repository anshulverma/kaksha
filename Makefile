build = docker build -t anshulverma/$(1) ./docker/$(1)

push = docker push anshulverma/$(1)

baseimage: build.baseimage push.baseimage

kaksha: build.kaksha push.kaksha

build.baseimage:
	$(call build,baseimage)

push.baseimage:
	$(call push,baseimage)

build.kaksha:
	$(call build,kaksha)

push.kaksha:
	$(call push,kaksha)

build.all: baseimage kaksha

.DEFAULT_GOAL := build.all
