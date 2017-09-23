#!/bin/sh
# file: examples/equality_test.sh

testEquality()
{
	sh 5.sh
	actual=`cat actual_4.txt`
	expected=`cat expected_4.txt`
  assertEquals "$actual" "$expected"
}

# load shunit2
. shunit2-2.1.6/src/shunit2
