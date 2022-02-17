#!/usr/bin/env bash

EXERCISES_DIR="exercises"
CURRENT_EXERCISE_DIR="${EXERCISES_DIR}/$(basename "${BATS_TEST_FILENAME%.bats}")"
export CURRENT_EXERCISE_DIR
