baseimage: build.baseimage
	docker push anshulverma/baseimage

kaksha: build.kaksha
	docker push anshulverma/kaksha

build.baseimage:
	docker build -t anshulverma/baseimage ./docker/baseimage

build.kaksha:
	docker build -t anshulverma/kaksha ./docker/kaksha
