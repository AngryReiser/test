#!/bin/sh
# file: examples/equality_test.sh

testEquality()
{
	sh 5.sh
	actual=`cat res_5.xml`;
	expected=`cat result.xml`;
	echo "${actual}"
	echo "${expected}"
  assertEquals ${actual} ${expected}
}

# load shunit2
. shunit2-2.1.6/src/shunit2