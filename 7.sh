#!/bin/bash
cat dns-tunneling.log |awk '/google.com/ {print $15}'|wc -l > results.txt
cat dns-tunneling.log |awk '/facebook.com/ {print $15}'|wc -l >> results.txt
cat dns-tunneling.log |awk '{print $15}'|  awk '{ print length($0), $0; }' | sort -grk 1 | head -n1 | cut -d' ' -f'2-'>> results.txt
