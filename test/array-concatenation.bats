setup() {
    load 'test_helper/bats-support/load'
    load 'test_helper/bats-assert/load'
    load 'test_helper/common-setup'
}

@test "should concatenate 2 arrays" {
    run ruby "${CURRENT_EXERCISE_DIR}/main.rb"
    assert_success
}
