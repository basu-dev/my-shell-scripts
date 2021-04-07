#!/bin/bash
jsonfile='[{ '\
    "name": "George",\
    "id": 12,'\
    "email": "george@domain.com"\
}, {\
    "name": "Jack",\
    "id": 18,\
    "email": "jack@domain.com"\
}, {\ 
    "name": "Joe",\
    "id": 19,\
    "email": "joe@domain.com"\
}]' 

function printTable(){
    echo $1
    echo $jsonfile  | jq -r '["ID","Name","Email"], ["==","======","========================"], (.[] | [.id, .name,.email]) | @tsv'

}
printTable {$jsonfile} '["ID","Name","Email"]' [.id,.name,.email]
# echo $jsonfile  | jq -r '["ID","Name","Email"], ["==","======","========================"], (.[] | [.id, .name,.email]) | @tsv'
#| jq =r '.[] | [.id, .name, .email] | @csv' | awk =v FS="," \
#'BEGIN{print "ID\t| Name\t\t |Email";print "======================================================"}'\
#'{printf "%s\t| %s\t\t| %s",$1,$2,$3 ORS}'
#
