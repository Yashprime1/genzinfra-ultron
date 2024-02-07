#!/bin/bash
cd $1
echo "$bamboo_dockerpass" | docker login --username "$bamboo_dockeruser" --password-stdin
docker build . -t yashprime07/$1:$bamboo_buildKey-$bamboo_buildNumber
docker push yashprime07/$1:$bamboo_buildKey-$bamboo_buildNumber