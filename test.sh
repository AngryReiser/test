#!/bin/sh
# file: examples/equality_test.sh

testEquality()
{
	sh 7.sh
	actual=`md5sum results.txt`
	expected="2ac7ea95240c2b3c79a444bb04cccc87  results.txt"
  assertEquals "$actual" "$expected"
}

# load shunit2
. shunit2-2.1.6/src/shunit2
