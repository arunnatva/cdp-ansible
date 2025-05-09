ansible-playbook -i inventory.ini prepare.yml
ansible-playbook -i inventory.ini install_jdk.yml
ansible-playbook -i inventory.ini install_cm.yml
ansible-playbook -i inventory.ini install_agents.yml

