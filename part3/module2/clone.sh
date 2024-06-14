#!/bin/bash

git clone https://github.com/$1 example-shell;
sleep 1;
cd example-shell;
docker login -u $DOCKER_USER -p $DOCKER_PWD
docker build . -t $2;
docker push $2;