#!/bin/bash
URL="$1"
if [ -z "$URL" ]; then 
   echo "Provide URL"
   exit 1
fi

scripts/crawl-node.sh $URL > /dev/null 2>&1; scripts/cat-unique.sh > /dev/null 2>&1; scripts/urldedupe-node.sh > /dev/null 2>&1; scripts/nuclei-node.sh; rm output/*.txt;
