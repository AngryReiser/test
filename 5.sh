#!/bin/bash
echo "<dnslog>">result.xml
cat dns-tunneling.log | tail -50 | awk '{print "<row>\n\t<timestamp>"$3"</timestamp>\n\t<client_i$
echo "</dnslog>">>result.xml
