## -*- docker-image-name: "anshulverma/kaksha" -*-

FROM phusion/baseimage:0.9.15

MAINTAINER anshul.verma86@gmail.com

USER root

ENV HOME /home/root

RUN ["useradd", "-m", "anshul"]

# Regenerate SSH keys
RUN /etc/my_init.d/00_regen_ssh_host_keys.sh

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

RUN apt-get update && \
    apt-get upgrade -y

RUN apt-get install -y build-essential && \
    apt-get install -y git && \
    apt-get install -y wget curl \
                       vim unzip man

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

USER anshul

ENV HOME /home/anshul

# Default command
CMD ["bash"]
