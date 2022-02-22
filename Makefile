# Technical prelude
SHELL := bash
.ONESHELL:
.SHELLFLAGS := -eu -o pipefail -c
.DELETE_ON_ERROR:
MAKEFLAGS += --warn-undefined-variables
MAKEFLAGS += --no-builtin-rules

TEST_DIR := test
BATS := $(TEST_DIR)/bats/bin/bats

.PHONY: test
test:
	$(BATS) --formatter pretty --timing -j 8 "$(TEST_DIR)"

.PHONY: executable
executable:
	find . -name '*.rb' -not -perm 0755 -exec chmod 0755 {} \;
