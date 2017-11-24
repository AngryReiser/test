#!/bin/sh
# file: examples/equality_test.sh

testEquality()
{
	sh 4.sh
	cat results.txt
	actual=`md5sum results.txt`
	expected="9a787d7a166e53fc8422cd049a2da6df  results.txt"
  assertEquals "$actual" "$expected"
}

# load shunit2
. shunit2-2.1.6/src/shunit2
