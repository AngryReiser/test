#!/bin/bash
echo "<dnslog>" > results.xml
cat dns-tunneling.log | tail -50 | awk '{print "<row>\n\t<timestamp>"$3"</timestamp>\n\t<client_ip>"$4"</client_ip>\n\t<client_port>"$5"</client_port>\n\t</row>"}' >> results.xml
echo "</dnslog>" >> results.xml
