#!/bin/bash
cd $1
docker build . -t yashprime07/dashboard:latest
docker push