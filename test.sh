#!/bin/sh
# file: examples/equality_test.sh

testEquality()
{
	sh 9.sh
	actual=`md5sum results.json`
	expected="493b6eb7e3c25dc96716a9e47187278c  results.json"
  assertEquals "$actual" "$expected"
}

# load shunit2
. shunit2-2.1.6/src/shunit2
