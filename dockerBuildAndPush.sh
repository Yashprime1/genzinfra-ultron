#!/bin/bash
cd $1
systemctl start docker
docker login -u $bamboo_dockeruser -p $bamboo_dockerpass 
docker build . -t yashprime07/$1:latest
docker push yashprime07/$1:latest