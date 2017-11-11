#!/bin/sh
# file: examples/equality_test.sh

testEquality()
{
	sh 10.sh
	actual=`cat result.txt`
	expected=`cat res_10.txt`
  assertEquals "$actual" "$expected"
}

# load shunit2
. shunit2-2.1.6/src/shunit2