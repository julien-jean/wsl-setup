ansible:
	./scripts/install_ansible.sh

configure: ansible
	ansible-playbook configure.yml --ask-become-pass
