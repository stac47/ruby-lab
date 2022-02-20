setup() {
    load 'test_helper/bats-support/load'
    load 'test_helper/bats-assert/load'
    load 'test_helper/common-setup'
}

@test "should display a tree structure" {
    run ruby "${CURRENT_EXERCISE_DIR}/main.rb"
    assert_success
    assert_output <<EOF
root
  child1
    baby1
    baby2
    baby3
  child2
EOF
}

