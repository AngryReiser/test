#!/bin/sh
# file: examples/equality_test.sh

testEquality()
{
	sh 1.sh
	actual=`cat res_1.xml`
	expected=`cat result.xml`
  assertEquals "$actual" "$expected"
}

# load shunit2
. shunit2-2.1.6/src/shunit2