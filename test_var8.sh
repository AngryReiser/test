#!/bin/sh
# file: examples/equality_test.sh

testEquality()
{
	sh 8.sh
	actual=`cat results.json`
	expected=`cat expected.json`
  assertEquals "$actual" "$expected"
}

# load shunit2
. shunit2-2.1.6/src/shunit2