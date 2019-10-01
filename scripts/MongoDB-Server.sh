#!/bin/bash
echo 'Installing MongoDB...'
sudo apt -y install mongodb > /dev/null

echo 'Updating MongoDB config...'
IPAddress=$(ip address show eth0 | egrep '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | cut -d ' ' -f 6 | cut -d '/' -f 1)
sudo sed -i 's/dbpath=\/var\/lib\/mongodb/dbpath=\/mnt\/vm_share/' /etc/mongodb.conf
sudo sed -i "s/bind_ip = 127.0.0.1/bind_ip = $IPAddress/" /etc/mongodb.conf
sudo sed -i 's/#port = 27017/port = 27017/' /etc/mongodb.conf

echo "Giving 'mongodb' user permissions to the data directory..."
sudo chmod -R 777 /mnt/vm_share/

echo 'Starting MongoDB service...'
sudo systemctl restart mongodb > /dev/null

echo 'Enabling MongoDB service...'
sudo systemctl enable mongodb > /dev/null

exit 0
