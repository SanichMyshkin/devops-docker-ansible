role-install:
	ansible-galaxy install -r requirements.yml

install:
	ansible-playbook playbook.yml -i inventory.ini --tags "install"

deploy:
	ansible-playbook playbook.yml -i inventory.ini --tags "deploy" --ask-vault-pass

monitor:
	ansible-playbook playbook.yml -i inventory.ini --tags "monitor" --ask-vault-pass

delete:
	ansible-playbook delete.yml -i inventory.ini
	
decrypt:
	ansible-vault decrypt group_vars/webservers/vault.yml

encrypt:
	ansible-vault encrypt group_vars/webservers/vault.yml
