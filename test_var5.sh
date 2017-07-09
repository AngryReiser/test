#! /bin/sh
# file: examples/equality_test.sh

testEquality()
{
	5.sh
  assertEquals res_5.xml result.xml
}

# load shunit2
. ../src/shell/shunit2