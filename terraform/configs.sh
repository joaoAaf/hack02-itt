#!/bin/bash
apt-get update
apt-get install curl -y
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
rm get-docker.sh
groupadd docker
usermod -aG docker ubuntu
docker run -d --name api -p 80:8080 joaoaaf/golang-api:1.0