#!/bin/bash
echo "{" > results.json
cat dns-tunneling.log | head -100 |tail -50 | awk '{print "\t\""$3"\": {\n\t\t\"timestamp\": \""$4"\",\n\t\t\"client ip\": \""$5"\",\n\t\t\"client port\": \""$6"\"\n\t},"}' >> results.json
echo "}" >> results.json
