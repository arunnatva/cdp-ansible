# cdp-ansible
ansible playbooks to deploy CDP PvC base clusteri

# cdp-ansible
ansible playbooks to deploy CDP PvC base cluster
This repo contains a bunch of Ansible plyabooks and tasks that accomplish below tasks in this order:
1. installation of pre-requisites such as OS pkgs, configs
2. installation of software such as jdk, python etc.,
3. check the sizes of the volumes or file systems such as /opt, /var, /home, /tmp
4. check the existence and size of folders /data/nn, /data/jn on master nodes, and /data/dn on worker nodes and add a check to verify minimum size
5. Download CM server and agent software, install and start CM server and agents
6. download CDP parcels, install parcels
7. start services
8. validate services
9. enabled kerberos
10. enable Auto TLS

This is being developed and the README will keep evolving as I make progress.

The steps to use this repo to deploy CDP cluster.

- Create a bunch of VMs or physical nodes that run linux OS, such as RHEL or Ubuntu etc., This repo is created for RHEL hosts
- chose one of the hosts as ansible controller
- install ansible on the controller node
- install the right/appropriate version of python on all the hosts, that is compatible with ansible version
- setup passwordless SSH for root user from this controller to all other hosts. Ideally, dont use the controller node as part of CDP cluster
-  update the inventory.yml with the hostnames

