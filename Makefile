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
	$(BATS) "$(TEST_DIR)"
