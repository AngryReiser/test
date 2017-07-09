#!/bin/bash
# file: examples/equality_test.sh

testEquality()
{
	sh 5.sh
	actual << echo res_5.xml
	expected <<  echo result.xml
  assertEquals actual expected
}

# load shunit2
. shunit2-2.1.6/src/shunit2