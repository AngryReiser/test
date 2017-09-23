#!/bin/bash
cat dns-tunneling.log |awk '{print $15}'|  awk '{ print length($0), $0; }' | sort -grk 1 | head -n1 | cut -d' ' -f'2-'> results.txt
