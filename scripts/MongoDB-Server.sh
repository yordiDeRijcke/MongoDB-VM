#!/bin/bash
echo 'Installing MongoDB...'
sudo apt -y install mongodb

echo 'Starting MongoDB service...'
sudo systemctl start mongodb

echo 'Enabling MongoDB service...'
sudo systemctl enable mongodb

exit 0
