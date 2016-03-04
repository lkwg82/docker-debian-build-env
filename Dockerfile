FROM ubuntu:14.04
MAINTAINER Lars K.W. Gohlke <lkwg82@gmx.de>

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends \
        bash-completion \
        debhelper \
        devscripts equivs \
        dh-make \
        dpkg-dev \
        git \
        software-properties-common \
        python-software-properties \
    && apt-get clean

RUN mkdir -p /development
WORKDIR /development

ENTRYPOINT /bin/bash -c 'while(true); do sleep 10; done'
