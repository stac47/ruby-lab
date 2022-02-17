setup() {
    load 'test_helper/bats-support/load'
    load 'test_helper/bats-assert/load'
    load 'test_helper/rosettacode-setup'
}

@test "should compute factorial of 3" {
    run ruby "${ROSETTA_EXERCISE_DIR}/factorial.rb" <<< "3"
    assert_success
    assert_output "6"
}

@test "should compute factorial of 6" {
    run ruby "${ROSETTA_EXERCISE_DIR}/factorial.rb" <<< "6"
    assert_success
    assert_output "720"
}

@test "should fail on negative number" {
    run ruby "${ROSETTA_EXERCISE_DIR}/factorial.rb" <<< "-3"
    assert_failure
    assert_output "Negative argument provided"
}

@test "should accept decimal numbers" {
    run ruby "${ROSETTA_EXERCISE_DIR}/factorial.rb" <<< "3.14"
    assert_success
    assert_output "6"
}
