## -*- docker-image-name: "anshulverma/baseimage" -*-

FROM phusion/baseimage:0.9.15

MAINTAINER anshul.verma86@gmail.com

USER root

ENV HOME /root

# Regenerate SSH keys
RUN /etc/my_init.d/00_regen_ssh_host_keys.sh

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

# this forces dpkg not to call sync() after package extraction and speeds up install
RUN echo "force-unsafe-io" > /etc/dpkg/dpkg.cfg.d/02apt-speedup

# we don't need and apt cache in a container
RUN echo "Acquire::http {No-Cache=True;};" > /etc/apt/apt.conf.d/no-cache

### Start APT package configuration ###
RUN apt-get update && \
    apt-get upgrade -y

# install all required packages in one line to limit layers
RUN apt-get -y install git

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

### End APT package configuration ###
