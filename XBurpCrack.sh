#!/bin/bash
# code by xcanwin
# https://github.com/xcanwin/

dt=`date "+%m/%d/%Y %H:%M:%S"`
date -s "10/24/2014 00:00:00"
bash -c "java -jar BurpLoader.jar &"
sleep 20
date -s "$dt"
echo "enjoy it."
