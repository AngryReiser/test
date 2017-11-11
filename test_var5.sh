#!/bin/sh
# file: examples/equality_test.sh

testEquality()
{
	sh script5
	actual=`cat actual.txt`
	expected=`cat expected.txt`
  assertEquals "$expected" "$actual"
}

# load shunit2
. shunit2-2.1.6/src/shunit2
