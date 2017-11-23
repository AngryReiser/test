#!/bin/sh
# file: examples/equality_test.sh

testEquality()
{
	sh 5.sh
	actual=`md5sum results.txt`
	expected="2123fffa1d2cda5fdee16e1e1606ae44  results.txt"
  assertEquals "$expected" "$actual"
}

# load shunit2
. shunit2-2.1.6/src/shunit2
