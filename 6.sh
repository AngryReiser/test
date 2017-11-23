#!/bin/bash
cat dns-tunneling.log | awk '{print $15}'| awk -F "." {'print $(NF-2)"."$(NF-1)'}| sort | uniq > results.txt