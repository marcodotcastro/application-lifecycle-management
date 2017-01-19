#!/bin/sh
#
# Prerequisites:
# - Linux Ubuntu 16.04, Kernel 4.4.0-59-generic	
# - Docker version 1.12.6
# - Git version 2.7.4

echo "Checkout Git Repository"
git clone git@github.com:marcodotcastro/alm_docker.git
cd alm_docker

echo "Startup Docker Compose"
docker-compose up
