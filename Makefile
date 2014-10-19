baseimage: build.baseimage
	docker push anshulverma/baseimage

build.baseimage:
	docker build -t anshulverma/baseimage ./docker/baseimage
