#!/bin/bash
cd $1
echo "$bamboo_dockeruser $bamboo_dockerpass"
echo "$bamboo_dockerpass" | sudo docker login --username "$bamboo_dockeruser" --password-stdin
sudo docker build . -t yashprime07/$1:$bamboo_planKey-$bamboo_buildNumber
sudo docker push yashprime07/$1:$bamboo_planKey-$bamboo_buildNumber