#!/bin/bash
cd $1
docker build . -t yashprime07/$1:latest
docker push yashprime07/$1:latest