#!/bin/bash

cat dns-tunneling.log |awk '{print $5}' |sort -V | uniq >results.txt
cat dns-tunneling.log |awk '{print $5}' | sort -V|uniq |wc -l >>results.txt
