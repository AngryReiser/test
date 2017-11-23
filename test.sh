#!/bin/sh
# file: examples/equality_test.sh

testEquality()
{
	sh 3.sh
	actual=`md5sum results.txt`
	expected="a644963651fab554cb5605c5b8e110f6  results.txt"
  assertEquals "$actual" "$expected"
}

# load shunit2
. shunit2-2.1.6/src/shunit2
