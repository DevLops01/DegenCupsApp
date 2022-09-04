#! /bin/bash

pm2 stop 0
rm -rf /apps/cryptosplash-live

mkdir temp
unzip /root/deploy.zip -d temp
cp -R /root/temp /apps/cryptosplash-live

rm -rf /root/temp

npm i --prefix /apps/cryptosplash-live
pm2 start 0
