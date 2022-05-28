#/bin/bash

# List CentOS Linux hosts 
ansible centos_linux --list-hosts

# List Red Hat Linux hosts 
ansible rhel_linux --list-hosts

# Ping Red Hat Linux hosts
ansible rhel_linux -m ping

# Ping CentOS Linux hosts
ansible centos_linux -m ping

# List all Linux hosts
ansible linux --list-hosts
