role-install:
	ansible-galaxy install -r requirements.yml

install:
	ansible-playbook playbook.yml -i inventory.ini
	