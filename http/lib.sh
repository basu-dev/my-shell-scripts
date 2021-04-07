#!/bin/bash

source ./urls.sh

function post(){
   curl -4 $1  \
  -H 'Connection: keep-alive' \
  -H 'Accept: application/json, text/plain, */*' \
  -H 'Authorization: null' \
  -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.105 Safari/537.36' \
  -H 'Content-Type: application/json' \
  -H 'Sec-GPC: 1' \
  -H 'Origin: https://meroshare.cdsc.com.np' \
  -H 'Sec-Fetch-Site: same-site' \
  -H 'Sec-Fetch-Mode: cors' \
  -H 'Sec-Fetch-Dest: empty' \
  -H 'Referer: https://meroshare.cdsc.com.np/' \
  -H 'Accept-Language: en-US,en;q=0.9' \
  --data-raw $2 \
  --compressed  
}
function get(){
    echo $1
     curl -4 $1  \
  -X GET \
  -H 'Connection: keep-alive' \
  -H 'Accept: application/json, text/plain, */*' \
  -H 'Authorization: '$2'' \
  -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.105 Safari/537.36' \
  -H 'Content-Type: application/json' \
  -H 'Sec-GPC: 1' \
  -H 'Origin: https://meroshare.cdsc.com.np' \
  -H 'Sec-Fetch-Site: same-site' \
  -H 'Sec-Fetch-Mode: cors' \
  -H 'Sec-Fetch-Dest: empty' \
  -H 'Referer: https://meroshare.cdsc.com.np/' \
  -H 'Accept-Language: en-US,en;q=0.9' \
  --compressed 
  
}
function getToken(){
  $(echo $(head -n 1 ./token.txt) | awk '{print $2}')
}
function login(){
  echo $1 $2
     curl -4 -i $1  \
  -H 'Connection: keep-alive' \
  -H 'Accept: application/json, text/plain, */*' \
  -H 'Authorization: null' \
  -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.105 Safari/537.36' \
  -H 'Content-Type: application/json' \
  -H 'Sec-GPC: 1' \
  -H 'Origin: https://meroshare.cdsc.com.np' \
  -H 'Sec-Fetch-Site: same-site' \
  -H 'Sec-Fetch-Mode: cors' \
  -H 'Sec-Fetch-Dest: empty' \
  -H 'Referer: https://meroshare.cdsc.com.np/' \
  -H 'Accept-Language: en-US,en;q=0.9' \
  --data-raw $2 \
  --compressed  | grep authorization >> token.txt
}
function getCurrentIssue(){
  echo $(getToken)
  get $currentIssue $(getToken)
}