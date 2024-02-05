#!/bin/bash
cd $1
systemctl start docker
docker build . -t yashprime07/dashboard:latest
docker push