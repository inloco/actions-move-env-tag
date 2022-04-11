configure-ssh:
	sudo chown user ~/.ssh
	ssh-keyscan github.com >> ~/.ssh/known_hosts
	git config --global url."git@github.com:".insteadOf https://github.com/
.PHONY: configure-ssh

move-git-tag:
	git checkout $(GIT_REF)
	git tag -fam "" "$(ENV_TAG)"
	git push -fu "$(shell git remote show)" "$(ENV_TAG)"
.PHONY: move-git-tag
