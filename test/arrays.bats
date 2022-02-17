setup() {
    load 'test_helper/bats-support/load'
    load 'test_helper/bats-assert/load'
    load 'test_helper/rosettacode-setup'
}

@test "should manipulate an array" {
    run ruby "${CURRENT_EXERCISE_DIR}/main.rb"
    assert_success
}
