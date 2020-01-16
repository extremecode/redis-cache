#/bin/bash

cd /tmp
wget http://download.redis.io/releases/redis-5.0.5.tar.gz
tar xzf redis-5.0.5.tar.gz
rm -rf redis-5.0.5.tar.gz
mv redis-5.0.5 redis
cp $BOOT_DIR/../config/redis.conf /tmp/redis/src/
cd redis
make

