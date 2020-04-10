#!/bin/bash -

# curl先URL
url='curl -X GET http://example.com/ -o - -w '%{http_code}' -sS' 

# curl実行
urlexec=`${url}`

# httpステータスコード
# -w '%{http_code}'オプションにより最終行に取得するため切り出す
httpstatus=`echo "$urlexec" | tail -n 1`

# レスポンスボディ
body=`echo "$urlexec" | sed '$d'`

###############
# echo $httpstatus
# 200

# echo $body
# <!doctype html> <html> <head> <title>Example Domain< ...
###############
