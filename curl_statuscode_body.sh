#!/bin/bash -

url='curl -X GET http://example.com/ -o - -w '%{http_code}' -sS' 
urlexec=`${url}`
httpstatus=`echo "$urlexec" | tail -n 1`
body=`echo "$urlexec" | sed '$d'`

echo $urlexec
echo "*******************"
echo $httpstatus
echo "*******************"
echo $body
