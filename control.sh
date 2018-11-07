#!/bin/bash
cd "$(dirname "$0")"

if [ "$1" = "init" ]; then
    echo "Add password like this: (good chance to copy/paste)"
    echo "user_pass: somepassword"
    echo "sudo_pass: somepassword"
    sleep 7
    ansible-vault create passwd.yaml

elif [ "$1" = "reset" ]; then
    ansible-playbook -i hosts --ask-vault-pass --extra-vars '@passwd.yaml' reset_homelab.yaml

elif [ "$1" = 'kubeadm_cluster' ]; then
    ansible-playbook -i hosts --ask-vault-pass --extra-vars '@passwd.yaml' reset_homelab.yaml install_kubeadm_cluster.yaml
fi