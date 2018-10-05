# homelab-ansible
Ansible playbooks for managing my homelab vms.

Requires Ansible 2.7 for the reboot module

## Common Commands

Resetting the VMs to their base images:

```
ansible-playbook -i hosts reset_homelab.yaml --ask-become-pass
```
