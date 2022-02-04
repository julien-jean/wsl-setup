#!/usr/bin/env bash

which ansible | grep "ansible" &> /dev/null
if [ $? == 0 ]; then
    echo "Ansible seems to be already installed. Skipping."
    exit 0
fi

sudo apt update
sudo apt install -y software-properties-common make
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install -y ansible
