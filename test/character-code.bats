setup() {
    load 'test_helper/bats-support/load'
    load 'test_helper/bats-assert/load'
    load 'test_helper/common-setup'
}

@test "should display the character code of 'a'" {
    run ruby "${CURRENT_EXERCISE_DIR}/main.rb" --show-code a
    assert_success
    assert_output "97"
}

@test "should display the character which ascii code is 97" {
    run ruby "${CURRENT_EXERCISE_DIR}/main.rb" --show-char 97
    assert_success
    assert_output "a"
}

@test "should display usage" {
    run ruby "${CURRENT_EXERCISE_DIR}/main.rb" --help
    assert_failure
}

