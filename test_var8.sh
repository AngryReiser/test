#!/bin/sh
# file: examples/equality_test.sh

testEquality()
{
	sh 8.sh
	actual=`md5sum results.json`
	expected="4d22e9d9a9a9565e317b51ae52f625fe  results.json"
  assertEquals "$actual" "$expected"
}

# load shunit2
. shunit2-2.1.6/src/shunit2
