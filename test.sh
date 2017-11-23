#!/bin/sh
# file: examples/equality_test.sh

testEquality()
{
	sh 6.sh
	actual=`md5sum results.txt`
	expected="1fc883f45ed2a912ac6e313a4c730357  results.txt"
  assertEquals "$actual" "$expected"
}

# load shunit2
. shunit2-2.1.6/src/shunit2
