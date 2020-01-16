#!/bin/bash

echo " creating redis cluster"
mkdir -p /opt/redis-cluster

for port in 6001 6002 6003 6004 6005 6006
do
  echo "creating redis for  $port"
  mkdir -p /opt/redis-cluster/$port
  cp -R /tmp/redis /opt/redis-cluster/$port
  sed -i 's/6001/'$port'/g' /opt/redis-cluster/$port/redis/src/redis.conf
done

