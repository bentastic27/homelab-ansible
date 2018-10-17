Ansible Role: kubernetes kubeadm node
=========

Using kubeadm setup kubernetes nodes.

Requirements
------------

- kubeadm installed
- kubernetes `master` created
- kubernetes `master` must be placed in `master` section in inventory file.
- kubernetes `node` must be placed in `nodes` section in inventory file.

Role Variables
--------------

None.

Dependencies
------------

None.

Example Playbook
----------------

```yml
- hosts: all
  become: yes
  roles:
    - { role: djx339.k8s-kubeadm-node }
```

License
-------

BSD

Author Information
------------------

This role was created by [Daniel D](https://github.com/djx339).
