#!/bin/sh
# file: examples/equality_test.sh

testEquality()
{
	sh 6.sh
	actual=`cat results.txt`
	expected=`cat expected.txt`
  assertEquals "$actual" "$expected"
}

# load shunit2
. shunit2-2.1.6/src/shunit2