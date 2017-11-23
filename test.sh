#!/bin/sh
# file: examples/equality_test.sh

testEquality()
{
	sh 4.sh
	actual=`md5sum results.txt`
	expected="94f80200f87c6b20b6f3482c2d6647f5  results.txt"
  assertEquals "$actual" "$expected"
}

# load shunit2
. shunit2-2.1.6/src/shunit2
