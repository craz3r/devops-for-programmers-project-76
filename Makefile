setup: install-galaxy setup-dependencies

install-galaxy:
	ansible-galaxy install -r requirements.yml

setup-dependencies:
	ansible-playbook setup.yml -i inventory.yml

deploy-application:
	ansible-playbook -i inventory.yml --ask-vault-pass playbook.yml

encrypt-vault:
	ansible-vault encrypt group_vars/webservers/vault.yml

edit-vault:
	ansible-vault edit group_vars/webservers/vault.yml