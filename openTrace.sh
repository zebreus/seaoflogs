#!/bin/bash
DATE="$(date +%H_%M_%S)"
TRACE_FILE="/home/lennart/Documents/seaoflogs/trace_${DATE}.txt"
cp /home/lennart/Documents/deno/trace.txt $TRACE_FILE
sed "/CONTENTCONTENT/e cat $TRACE_FILE" demo_template.html >trace_${DATE}.html
xdg-open trace_${DATE}.html
