run: install-galaxy deploy-application

install-galaxy:
	ansible-galaxy install -r requirements.yml

deploy-application:
	ansible-playbook --vault-password-file .vault_pass -i inventory.yml playbook.yml

encrypt-vault:
	ansible-vault encrypt group_vars/webservers/vault.yml

edit-vault:
	ansible-vault edit group_vars/webservers/vault.yml