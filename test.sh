#!/bin/sh
# file: examples/equality_test.sh

testEquality()
{
	sh 10.sh
	actual=`md5sum results.txt`
	expected="61a3ece2c4407b8755d476c97b8c16bf  results.txt"
  assertEquals "$actual" "$expected"
}

# load shunit2
. shunit2-2.1.6/src/shunit2
