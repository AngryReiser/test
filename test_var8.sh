#!/bin/sh
# file: examples/equality_test.sh

testEquality()
{
	sh 8.sh
	actual=`md5sum results.json`
	expected="5ae9cc1f4e3ceb830e2647c5608c2e97  results.json"
  assertEquals "$actual" "$expected"
}

# load shunit2
. shunit2-2.1.6/src/shunit2
