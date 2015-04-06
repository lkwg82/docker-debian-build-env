# docker-debian-build-env
a debian package build environment with docker this is meant to be a simple pbuilder replacement

# usage

```bash
# clone
git clone git@github.com:lkwg82/docker-debian-build-env.git docker-debian-build-env
cd docker-debian-build-env

# build docker image
docker build -t="debian-build" .

# source aliases and function into bash
source docker_aliases

# change to your package which contains 'debian'-directory
# I created this environment while packaging h2o http2 server
cd ../h2o

# this will stop -> reset -> start the container named 'debian-build'
# and bind your current directory into the container under /development (read-only)
# and tries to binary build your package in /tmp/dev
docker_debian_build_all

# you can connect to your running instance with
docker_debian_exec bash
```
