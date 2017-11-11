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
echo "Весь трафик          - %100 ($FCount)">actual12.txt;
echo "Трафик 1yf.de.       - %$pDNS1 ($DNS1)">>actual12.txt; 
echo "Трафик 2yf.de.       - %$pDNS2 ($DNS2)">>actual12.txt;
echo "Трафик facebook.com. - %$pDNSF ($DNSF)">>actual12.txt;
echo "Трафик google.com.   - %$pDNSG ($DNSG)">>actual12.txt;