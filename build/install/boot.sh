#!/bin/sh

echo 'Running boot scripts...'
set -e
umask 0027

for file in $(ls -1 $BOOT_DIR/*.sh)
do
	. $file; #Run in same shell environment
done
echo "Completed execution of all product boot scripts..."

