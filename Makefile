# Makefile for Code/User
SHELL=/bin/bash
.ONESHELL:
.SUFFIXES:
.SHELLFLAGS = -uec
MAKEFLAGS += --no-builtin-rules --no-print-directory

absdir := $(dir $(realpath $(lastword $(MAKEFILE_LIST))))
ProfileDirs = $(shell cd $(absdir)/profiles; ls 2>/dev/null)
Python = $(shell { which python3.{12..8} ; echo no-python; } | head -n 1 )

Config:
	@cat <<-EOF
	absdir=$(absdir)
	Python=$(Python)
	EOF

.py-available:
	@[[ -x $(Python) ]] || {
		echo "ERROR: no python available." >&2
		exit 19
	}


Makefile: ;


