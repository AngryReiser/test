#!/bin/bash
# file: examples/equality_test.sh

testEquality()
{
	sh 5.sh
  assertEquals 1 1
}

# load shunit2
. shunit2-2.1.6/src/shunit2