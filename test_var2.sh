#!/bin/sh
# file: examples/equality_test.sh

testEquality()
{
	sh 2.sh
	actual=`md5sum results.xml`
	expected=`fc3faf2218abe59f3303f5c0d18af1a5  results.xml`

  assertEquals "$actual" "$expected"
}

# load shunit2
. shunit2-2.1.6/src/shunit2