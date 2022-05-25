move-git-tag:
	git checkout $(GIT_REF)
	git tag -fam "" "$(ENV_TAG)"
	git push -fu "$(shell git remote show)" "$(ENV_TAG)"
.PHONY: move-git-tag
