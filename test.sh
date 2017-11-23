#!/bin/sh
# file: examples/equality_test.sh

testEquality()
{
	sh 4.sh
	actual=`md5sum results.txt`
	expected="2333e848fa304c0dbadf7521f002938a  results.txt"
  assertEquals "$actual" "$expected"
}

# load shunit2
. shunit2-2.1.6/src/shunit2
