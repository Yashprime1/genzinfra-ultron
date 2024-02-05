#!/bin/bash
cd $1
systemctl start docker
docker build . -t yashprime07/$1:latest
docker push yashprime07/$1:latest