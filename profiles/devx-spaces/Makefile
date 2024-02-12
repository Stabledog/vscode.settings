# Makefile for profiles/devx-spaces
#
.SHELLFLAGS= -ue
SHELL=/bin/bash
.ONESHELL:

Config:

setup:
	@
	[[ -d $(VscodeUserDir) ]] || exit 19
	cd $(VscodeUserDir)
	cat <<-EOF > _do_not_naively_commit_these_files
		cat profiles/devx-spaces/README.md for maintenance notes
	EOF
	cp profiles/devx-spaces/settings.json ./
	cp profiles/devx-spaces/extensions.json ./

