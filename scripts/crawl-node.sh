#!/bin/bash

URL="$1"

if [ -z "$URL" ]; then
   echo "Provide an URL"
   exit 1
fi

gau --blacklist ttf,woff,svg,png,jpg,gif $URL | tee output/gau-output.txt;
katana -no-color -u $URL -headless -concurrency 20 -field-scope fqdn -extension-filter ttf,woff,svg,png,jpg,gif -output output/katana-output.txt;