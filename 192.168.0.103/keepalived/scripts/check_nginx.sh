#!/bin/bash

for k in 1 2
do
    check_code=$( curl --connect-timeout 3 -sL -w "%{http_code}\\n" http://localhost:80 -o /dev/null )
    if [ "$check_code" != "200" ]; then
        if [ "$k" != "2" ]; then
            sleep 1
        else
            killall keepalived
            exit 1
        fi
    else
       exit 0
       break;
    fi
done
