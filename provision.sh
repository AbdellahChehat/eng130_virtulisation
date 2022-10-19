#!/bin/bash

# Install nodejs

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
sudo apt-get install python -y 

# Install nodejs 
sudo apt-get install python-software-properties
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -  

sudo apt-get install -y nodejs

#insatll pm2

sudo npm install pm2 -g

# access app folder 

cd app
cd app

sudo npm install
