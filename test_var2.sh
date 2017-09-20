#!/bin/sh
# file: examples/equality_test.sh

testEquality()
{
	sh 2.sh
	actual=`cat res_2.xml`
	expected=`cat result.xml`
  assertEquals "$actual" "$expected"
}

# load shunit2
. shunit2-2.1.6/src/shunit2