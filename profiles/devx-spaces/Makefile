# Makefile for profiles/devx-spaces
#
.SHELLFLAGS= -uec
SHELL=/bin/bash
.ONESHELL:

Config:

setup:
	@
	[[ -d $(VscodeUserDir) ]] || exit 19
	cd $(VscodeUserDir)
	cat <<-EOF > _do_not_naively_commit_these_files
		Read profiles/devx-spaces/README.md for maintenance notes
	EOF
	echo Hello
	cp profiles/devx-spaces/settings.json ./ || exit 21
	cp profiles/devx-spaces/extensions.json ./ || exit 23

