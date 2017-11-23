#!/bin/bash
dns1=`grep -E '1yf.de.' dns-tunneling.log | wc -l`
dns2=`grep -E '2yf.de.' dns-tunneling.log | wc -l`
dns=$(grep -E '1yf.de.|2yf.de.' dns-tunneling.log | wc -l)
d1=`cat dns-tunneling.log | awk ' {print $4} ' | sort -nk 1 |awk -F'.' '{print $1}'| head -n 1`;
d2=$(($d1+3600))
d3=`grep -E '1yf.de.|2yf.de.' dns-tunneling.log | awk ' {print $4} ' | sort -nk 1 |awk -F'.' '{print $1}'| awk -v d2=$d2 '{if ($1<=d2) {print $1} }'| wc -l`;
d4=`awk 'BEGIN{print ('"$d3"'/'3600')}'`
echo $dns1 > results.txt
echo $dns2 >>results.txt
echo $d4 >> results.txt
