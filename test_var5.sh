#!/bin/bash
# file: examples/equality_test.sh

testEquality()
{
	sh 5.sh
	echo res_5
	echo res_5.xml >> actual
	echo actual

	echo result
	echo result.xml >> expected
	echo expected
  assertEquals actual expected
}

# load shunit2
. shunit2-2.1.6/src/shunit2