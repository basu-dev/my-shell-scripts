#!/bin/bash

#Using lib for post and get
source lib.sh


clientId=140;
username="00078648"
secretfile=~/.secrets/http/user.log
password=$(tail -n 1 $secretfile)
token=$(head -n 1 ./token.txt  | awk '{print $2}')
echo $token
echo $password
read -s -p "Password : " pword

if [ ${#pword} != 0 ]
then
password=$pword
sed -i '$ d' $secretfile
echo $password>> $secretfile
fi

url='https://webbackend.cdsc.com.np/api/meroShare';


obj='{"clientId":'$clientId',"username":"'$username'","password":"'$password'"}';
loginUrl=$url"/auth/"
login $loginUrl $obj




