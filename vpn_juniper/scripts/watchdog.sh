#!/bin/bash  

while [ true ]; do
    sleep 20         
    if [ ! $(pidof openconnect) ];  then
        echo 'No pid for openconnect. Relaunch vpn...'
        cp /root/resolv.conf.old /etc/resolv.conf
        echo $PASSWORD | openconnect --juniper --no-cert-check $URL -u $USER -b
    fi 
done
