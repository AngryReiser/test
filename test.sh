#!/bin/sh
# file: examples/equality_test.sh

testEquality()
{
	sh 9.sh
	actual=`md5sum results.json`
	expected="1d206853b0951b8e0b6da08547abbaa6  results.json"
  assertEquals "$actual" "$expected"
}

# load shunit2
. shunit2-2.1.6/src/shunit2
