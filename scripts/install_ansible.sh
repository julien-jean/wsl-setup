#!/usr/bin/env bash

which ansible | grep "ansible" &> /dev/null
if [ $? == 0 ]; then
    echo "Ansible seems to be already installed. Skipping."
    exit 0
fi

apt update
apt install -y software-properties-common make
add-apt-repository --yes --update ppa:ansible/ansible
apt install -y ansible
