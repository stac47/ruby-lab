setup() {
    load 'test_helper/bats-support/load'
    load 'test_helper/bats-assert/load'
    load 'test_helper/rosettacode-setup'
}

@test "should detect a division by zero" {
    run ruby "${CURRENT_EXERCISE_DIR}/hello.rb"
    assert_success
    assert_output "Hello World!"
}

