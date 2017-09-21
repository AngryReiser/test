#!/bin/bash
echo "<dnslog>" > res_1.xml
cat dns-tunneling.log | tail -50 | awk '{print "<row>\n\t<serial>"$3"</serial>\n\t<client_ip>"$5"</client_ip>\n\t<url>"$15"</url>\n</row>"}' >> res_1.xml
echo "</dnslog>" >> res_1.xml
