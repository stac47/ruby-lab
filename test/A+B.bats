setup() {
    load 'test_helper/bats-support/load'
    load 'test_helper/bats-assert/load'
    load 'test_helper/rosettacode-setup'
}

function test_sum() {
    run ruby "${ROSETTA_EXERCISE_DIR}/sum.rb" <<< "$1"
    assert_success
    assert_output "$2"
}

@test "should sum two integers" {
    test_sum "2 2" "4"
    test_sum "3 2" "5"
}

@test "should report error when there is not exactly 2 integers" {
    run ruby "${ROSETTA_EXERCISE_DIR}/sum.rb" <<< "1 2 3"
    assert_failure
    assert_output "Exactly two numbers are required"
    run ruby "${ROSETTA_EXERCISE_DIR}/sum.rb" <<< ""
    assert_failure
    assert_output "Exactly two numbers are required"
    run ruby "${ROSETTA_EXERCISE_DIR}/sum.rb" <<< "1"
    assert_failure
    assert_output "Exactly two numbers are required"
}
