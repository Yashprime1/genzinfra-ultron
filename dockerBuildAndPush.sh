#!/bin/bash
cd $1
systemctl start docker
docker login -u ${bamboo.dockeruser} -p ${bamboo.dockerpass} 
docker build . -t yashprime07/$1:latest
docker push yashprime07/$1:latest