mac:
	@scripts/install-homebrew
	@scripts/install-ansible
	@ansible-galaxy install -r requirements.yml
	ansible-playbook playbook.yaml
	killall Dock
