check:
	ansible-playbook -i  hosts site.yml --check --diff -c local

install:
	ansible-playbook -i hosts site.yml -c local

dotfiles:
	ansible-playbook -i hosts site.yml -c local --tags dotfiles

brew:
	ansible-playbook -i hosts site.yml -c local --tags brew

sublime:
	ansible-playbook -i hosts site.yml -c local --tags sublime

vim:
	ansible-playbook -i hosts site.yml -c local --tags vim

facts:
	ansible all -i hosts -m setup -c local

arc:
	ansible-playbook -i hosts arc-macs.yml --tags dotfiles -vvvv
