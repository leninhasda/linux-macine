#!/usr/bin/env bash
sudo apt update
sudo apt install -y software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install -y ansible git
# git clone https://github.com/leninhasda/linux-machine $1
# cd linux-machine

files=(core chrome docker snap vscode shell)
for f in "${files[@]}"
do
  ansible-playbook playbooks/${f}.yml
done

source ~/.zshrc