#!/bin/sh
sudo wget -qO - https://www.mongodb.org/static/pgp/server-3.2.asc | sudo apt-key add - 
sudo echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.2.list
sudo apt-get update
sudo apt install -y mongodb-org
sudo systemctl start mongod
sudo systemctl enable mongod
