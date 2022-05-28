#/bin/bash

if [[ $# -ne 2 ]]; then
    echo "Usage: " $0 " username hostname"
    exit 2
fi

# Check ssh-key
if [ ! -f ~/.ssh/id_rsa ]; then
    echo "Generate rsa key pair..."
    /usr/bin/ssh-keygen -N "" -f ~/.ssh/id_rsa
fi

# copy rsa pub key

/usr/bin/ssh-copy-id $1@$2

