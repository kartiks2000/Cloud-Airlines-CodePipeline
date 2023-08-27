sudo ansible-playbook -u ubuntu -i ./jenkins_nodes.yaml --private-key private-key.pem playbooks/jenkins_end_to_end_playbook.yml
sudo ansible-playbook -u ubuntu -i ./jenkins_nodes.yaml --private-key private-key.pem playbooks/jenkins_installation_playbook.yml
sudo ansible-playbook -u ubuntu -i ./jenkins_nodes.yaml --private-key private-key.pem playbooks/jenkins_worker_setup_playbook.yml