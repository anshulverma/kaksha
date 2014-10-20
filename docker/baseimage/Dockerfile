## -*- docker-image-name: "anshulverma/baseimage" -*-

FROM phusion/baseimage:0.9.15

MAINTAINER anshul.verma86@gmail.com

USER root

ENV HOME /root

# Regenerate SSH keys
RUN /etc/my_init.d/00_regen_ssh_host_keys.sh

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

RUN apt-get update && \
    apt-get upgrade -y

# configure and install dependencies
RUN apt-get -y install autoconf automake libtool texinfo build-essential libxml2-dev libjpeg-dev \
    libgif-dev libtiff-dev libm17n-dev libpng12-dev librsvg2-dev libotf-dev libncurses5-dev git

# install emacs 24.3
RUN git clone --depth 1 -b emacs-24.3 git://git.savannah.gnu.org/emacs.git emacs-source
RUN cd emacs-source && \
    ./autogen.sh && \
    ./configure --prefix=/usr/local/emacs --with-x-toolkit=no --with-xpm=no && \
    make bootstrap && \
    make install

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
