#!/bin/sh
sed '/Content-Disposition: attachment/,/^\s*$/d; /Content-Disposition: inline/,/^\s*$/d' | \
curl -X POST -H "Content-Type: text/plain" -H "Secret: 12398" --data-binary @- http://app:9169/webhook