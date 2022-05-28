#/bin/bash

# Print all hosts date
ansible all -m command -a date

# Print all hosts date - one line...
ansible all -m command -a date -o

# Print /etc/redhat-release file content
ansible all  -m command -a "cat /etc/redhat-release"

# Print all hosts hostaname
ansible all -m command -a /usr/bin/hostname

# use command: copy..
# copy one file to remote host
ansible rhel7 -m copy -a "content='managed by Ansible\n' dest=/etc/motd"

