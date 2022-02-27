setup() {
    load 'test_helper/bats-support/load'
    load 'test_helper/bats-assert/load'
    load 'test_helper/common-setup'
}

@test "should find nothing on an empty input" {
    run ruby "${CURRENT_EXERCISE_DIR}/main.rb" <<EOF
2
5
hell 4
hello 5
idea 8
next 8
super 3
2
435561
43321
7
another 5
contest 6
follow 3
give 13
integer 6
new 14
program 4
5
77647261
6391
4681
26684371
77771
EOF
    assert_success
    assert_output <<EOF
Scenario #1
i
id
hel
hell
hello

i
id
ide
idea

Scenario #2
p
pr
pro
prog
progr
progra
program

n
ne
new

g
in
int

c
co
con
cont
anoth
anothe
another

p
pr
MANUALLY
MANUALLY
EOF
}

