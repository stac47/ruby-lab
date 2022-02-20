setup() {
    load 'test_helper/bats-support/load'
    load 'test_helper/bats-assert/load'
    load 'test_helper/common-setup'
}

function test_encrypt() {
    input="${1:?'Missing input to crypt'}"
    expected="${2:?'Missing expected value'}"
    run ruby "${CURRENT_EXERCISE_DIR}/main.rb" "${input}"
    assert_success
    assert_output "${expected}"
}


@test "should crypt with square code" {
    test_encrypt \
        "If man was meant to stay on the ground god would have given us roots" \
        "imtgdvs fearwer mayoogo anouuio ntnnlvt wttddes aohghn sseoau"
    test_encrypt \
        "Have a nice day" \
        "hae and via ecy"
    test_encrypt \
        "Feed The Dog" \
        "fto ehg ee dd"
    test_encrypt \
        "chillout" \
        "clu hlt io"
}

