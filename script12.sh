#!/bin/bash

#Вычисляем общий трафик
FCount=`cat dns-tunneling.log | awk '{a=a+$11} END {print a}'`;

#Вычиляем количество трафика по доменам (за трафик принимаем поле 11)
DNS1=`grep -E '1yf.de.' dns-tunneling.log | awk '{a=a+$11} END {print a}'`;
DNS2=`grep -E '2yf.de.' dns-tunneling.log | awk '{a=a+$11} END {print a}'`;
DNSF=`grep -E 'facebook.com.' dns-tunneling.log | awk '{a=a+$11} END {print a}'`;
DNSG=`grep -E 'google.com.' dns-tunneling.log | awk '{a=a+$11} END {print a}'`;

#Вычисляем проценты от общего трафика
pDNS1=`awk 'BEGIN{print ('"$DNS1"'/'"$FCount"')*'100'}'`;
pDNS2=`awk 'BEGIN{print ('"$DNS2"'/'"$FCount"')*'100'}'`;
pDNSF=`awk 'BEGIN{print ('"$DNSF"'/'"$FCount"')*'100'}'`;
pDNSG=`awk 'BEGIN{print ('"$DNSG"'/'"$FCount"')*'100'}'`;

#Выводим результат
echo "Full traffic          - %100 ($FCount)">actual.txt;
echo "Traffic 1yf.de.       - %$pDNS1 ($DNS1)">>actual.txt; 
echo "Traffic 2yf.de.       - %$pDNS2 ($DNS2)">>actual.txt;
echo "Traffic facebook.com. - %$pDNSF ($DNSF)">>actual.txt;
echo "Traffic google.com.   - %$pDNSG ($DNSG)">>actual.txt;
