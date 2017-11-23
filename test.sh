#!/bin/sh
# file: examples/equality_test.sh

testEquality()
{
	sh 10.sh
	actual=`md5sum results.txt`
	expected="e957402ea82b4626a67c02e9482e6924  results.txt"
  assertEquals "$actual" "$expected"
}

# load shunit2
. shunit2-2.1.6/src/shunit2
