#!/bin/sh
# file: examples/equality_test.sh

testEquality()
{
	sh 9.sh
	actual=`md5sum results.json`
	expected="4adedf859aa5bbb484fa9a03491b70c4  results.json"
  assertEquals "$actual" "$expected"
}

# load shunit2
. shunit2-2.1.6/src/shunit2
