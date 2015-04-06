FROM ubuntu:14.04.2
MAINTAINER Lars K.W. Gohlke <lkwg82@gmx.de>

RUN apt-get update && apt-get upgrade -y && apt-get install -y --no-install-recommends\
	software-properties-common python-software-properties bash-completion \
    dh-make dpkg-dev devscripts equivs && apt-get clean

RUN apt-get install -y --no-install-recommends git

RUN mkdir -p /development
WORKDIR /development

ENTRYPOINT /bin/bash
