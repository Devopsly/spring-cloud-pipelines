#!/bin/bash -xe 
sudo yum update -y
sudo yum install git -y
sudo yum install docker -y
sudo wget "https://github.com/docker/compose/releases/download/1.8.1/docker-compose-$(uname -s)-$(uname -m)"
sudo mv ./docker-compose-$(uname -s)-$(uname -m) /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose


mkdir -p workspaces
cd workspaces
git clone https://github.com/devopsly/spring-cloud-pipelines
sudo service docker start
sudo usermod -a -G docker ec2-user
echo 'Log out by typing ‘exit<enter>’. Need to login for docker permission to take effect'

