# MongoDB-VM
## Description
A vagrant setup to create an Ubuntu 18.04 MongoDB server on port 27017. This port is port forwarded to the host so that the database located on the VM can be accessed as localhost:27017 on the host.

## vm_share
This folder is rsynced to the VM and is also the data source for MongoDB to make it easier to transfer files.

## Default settings
- Ubuntu 18.04
- 2 vCPU's
- 1GB RAM

#### The amount of vCPU's and RAM can be changed in vagrant-hosts.yml

## What it configures
- Ubuntu 18.04 basebox
- MongoDB from apt repository
- Port forwarding for TCP port 27017
- Enabling the MongoDB service on boot
- Mounting a fileshare (vm_share)
