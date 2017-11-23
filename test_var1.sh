#!/bin/sh
# file: examples/equality_test.sh

testEquality()
{
	sh 1.sh
	actual=`md5sum results.xml`
	expected="ec683d3ca80ec3598ab12651503db844  results.xml"
  assertEquals "$actual" "$expected"
}

# load shunit2
. shunit2-2.1.6/src/shunit2