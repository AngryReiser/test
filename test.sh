#!/bin/sh
# file: examples/equality_test.sh

testEquality()
{
	sh script12.sh
	actual=`md5sum results.txt`
	expected="346f7f43a252a322a5e421f245c6c6fa  results.txt"
    assertEquals "$expected" "$actual"
}

# load shunit2
. shunit2-2.1.6/src/shunit2
