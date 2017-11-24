#!/bin/sh
# file: examples/equality_test.sh

testEquality()
{
	sh 12.sh
	actual=`md5sum results.txt`
	expected="df2d6f07a0a962d7a8979417be1dce91  results.txt"
    assertEquals "$expected" "$actual"
}

# load shunit2
. shunit2-2.1.6/src/shunit2
