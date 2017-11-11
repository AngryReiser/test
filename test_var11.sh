#!/bin/sh
# file: examples/equality_test.sh

testEquality()
{
	sh script11
	actual=`cat actual.tsv`
	expected=`cat expected.tsv`
  assertEquals "$expected" "$actual"
}

# load shunit2
. shunit2-2.1.6/src/shunit2
