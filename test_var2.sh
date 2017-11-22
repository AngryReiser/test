#!/bin/sh
# file: examples/equality_test.sh

testEquality()
{
	sh 2.sh
	actual=`md5sum results.xml`
	expected=`1e34870fe9e5165df951662fad8058b3  results.xml`

  assertEquals "$actual" "$expected"
}

# load shunit2
. shunit2-2.1.6/src/shunit2