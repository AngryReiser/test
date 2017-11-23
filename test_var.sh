#!/bin/sh
# file: examples/equality_test.sh

testEquality()
{
	sh 10.sh
	actual=`md5sum result.txt`
	expected="07459523c40d38b77d66742a281266e6  results.txt"
  assertEquals "$actual" "$expected"
}

# load shunit2
. shunit2-2.1.6/src/shunit2
