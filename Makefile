# Makefile for Code/User
SHELL=/bin/bash
.ONESHELL:
.SUFFIXES:
.SHELLFLAGS = -uec
MAKEFLAGS += --no-builtin-rules --no-print-directory

absdir := $(dir $(realpath $(lastword $(MAKEFILE_LIST))))

Config:
	@cat <<-EOF
	absdir=$(absdir)
	EOF

Makefile: ;


