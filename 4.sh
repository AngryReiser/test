#!/bin/bash

d1=`date +"%d-%m-%Y %T" -d @$(cat dns-tunneling.log | awk ' {print $4} ' | sort -nk 1 |awk -F'.' '{print $1}' | head -n 1)`;
ns1=`cat dns-tunneling.log | awk ' {print $4} ' | sort -nk 1 | awk -F'.' '{print $2}' | head -n 1 | head -c 2`; 
echo "$d1.$ns1">>results.txt;

d2=`date +"%d-%m-%Y %T" -d @$(cat dns-tunneling.log | awk ' {print $4} ' | sort -nk 1 | awk -F'.' '{print $1}' | tail -n 1)`; 
ns2=`cat dns-tunneling.log | awk ' {print $4} ' | sort -nk 1 | awk -F'.' '{print $2}' | head -n 1 | head -c 2`;
echo "$d2.$ns2">>results.txt;

linescount=`wc -l dns-tunneling.log`;
echo "$linescount">>results.txt;
