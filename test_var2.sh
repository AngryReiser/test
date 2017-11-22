#!/bin/sh
# file: examples/equality_test.sh

testEquality()
{
	sh 2.sh
	actual=`cat results.xml`
	expected=`a41611c3061dfa3d8afd488d42c8ea1e  results.xml`

  assertEquals "$actual" "$expected"
}

# load shunit2
. shunit2-2.1.6/src/shunit2