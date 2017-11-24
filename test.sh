#!/bin/sh
# file: examples/equality_test.sh

testEquality()
{
	sh 11.sh
	actual=`md5sum results.tsv`
	expected="02a69d8f85c87c7f85beabf6a0171bef  results.tsv"
  assertEquals "$expected" "$actual"
}

# load shunit2
. shunit2-2.1.6/src/shunit2
