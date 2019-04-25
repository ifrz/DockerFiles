#!/bin/bash

if [ ! -d "/root/.ipfs" ]
then
  ipfs init
fi
ipfs daemon --enable-pubsub-experiment -D > /root/.ipfs/ipfs.log 2>/root/.ipfs/debug.log &
PID=$(pidof ipfs daemon)
sleep 10
if ps -p $PID > /dev/null
then
   echo "ipfs daemon is running: $PID"
   node /home/node/orbit-db-api/src/cli.js api --ipfs-host localhost > /root/.ipfs/orbitdb.log
else
   echo "ipfs daemon is not running check debug.log"
fi
