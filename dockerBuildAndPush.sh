#!/bin/bash
cd $1
systemctl start docker
echo $bamboo_dockerpass
echo $bamboo_dockeruser
echo "$bamboo_dockerpass" | docker login --username $bamboo_dockeruser --password-stdin
docker build . -t yashprime07/$1:latest
docker push yashprime07/$1:latest