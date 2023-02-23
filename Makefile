setup: install-galaxy setup-dependencies

install-galaxy:
	ansible-galaxy install -r requirements.yml

setup-dependencies:
	ansible-playbook setup.yml -i inventory.yml

deploy-application:
	ansible-playbook -i inventory.yml playbook.yml