#!/usr/bin/env bash

set -e
set -x

cd user_ubuntu
docker build -t sconaway/user_ubuntu .
docker run -d --name="uu" sconaway/user_ubuntu bash
sleep 5
docker logs uu
docker stop uu
docker images

cd ..
cd user_ubuntu_test

docker build -t user_ubuntu_test .
docker run --name="uut" user_ubuntu_test

docker images

docker push sconaway/user_ubuntu
