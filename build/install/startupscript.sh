#!/bin/bash

for port in 6001 6002 6003 6004 6005 6006
do
  echo "starting redis for  $port"
  cd /opt/redis-cluster/$port
  ./redis/src/redis-server ./redis/src/redis.conf --daemonize yes
done


yes 'yes' |/opt/redis-cluster/6001/redis/src/redis-cli --cluster create 127.0.0.1:6001 127.0.0.1:6002 127.0.0.1:6003 127.0.0.1:6004 127.0.0.1:6005 127.0.0.1:6006 --cluster-replicas 1

ps aux | grep redis-server

tail -f /dev/null

