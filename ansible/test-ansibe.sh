#!/bin/bash

echo "apt on docker-darkevil - net-tools"
ansible-playbook -i inventory.ini net-tools-apt.yml

echo "yum on util-darkevil - tcpdump"
ansible-playbook -i inventory.ini tcpdump-yum.yml

echo "domain user on dc1-darkevil"
ansible-playbook -i inventory.ini windows-add-domain-user.yml -u darkevil-adm@dark-evil.local --ask

echo "linux local user on linux group"
ansible-playbook -i inventory.ini linux-local-user.yml
