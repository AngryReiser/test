#!/bin/bash
echo -e "{\n\t\"dnslog\": [\n\t\t" > results.json
cat dns-tunneling.log | head -100 |tail -50 | awk '{print "<entry>: {\n\t\t\t \"timestamp\":\""$4"\">,\n\t\t\t \"client ip\":\""$5"\",\n\t\t\t \"url\":\""$15"\"> \n\t\t},"}' >> results.json
echo -e "\n\t]\n}" >> results.json
