SHELL = /bin/bash

check_defined = $(foreach 1, $1, $(if $(value $1),,$(error Undefined $1)))

update-git-tag:
	$(call check_defined, TAG REF)
	git checkout $(REF)
	git tag -fam "" "$(TAG)"
	git push --force --set-upstream "$$(git remote show)" "$(TAG)"
.PHONY: update-git-tag

print:
	echo "$(REF)"
	echo "---"
	echo "$(TAG)"
