setup() {
    load 'test_helper/bats-support/load'
    load 'test_helper/bats-assert/load'
    load 'test_helper/common-setup'
}

@test "should find all the anagrams in a sentence" {
    run ruby "${CURRENT_EXERCISE_DIR}/main.rb" <<EOF
below the car is a rat drinking cider and bending its elbow while this thing is
an arc that can act like a cat which cried during the night caused by pain in
its bowel
EOF
    assert_success
    assert_output <<EOF
{below, elbow, bowel}, {car, arc}, {cider, cried}, {thing, night}, {act, cat}
EOF
}

