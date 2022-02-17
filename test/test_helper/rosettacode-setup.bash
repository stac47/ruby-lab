#!/usr/bin/env bash

ROSETTA_EXERCISE_DIR="rosettacode/$(basename "${BATS_TEST_FILENAME%.bats}")"
export ROSETTA_EXERCISE_DIR
