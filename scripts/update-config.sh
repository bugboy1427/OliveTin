#!/bin/sh
cd $(dirname $0)

user=$(cat ../hue-user)

cp ../config.yaml /etc/OliveTin/config.yaml

sed -i "s/USER/$user/g" /etc/OliveTin/config.yaml

cat /etc/OliveTin/config.yaml

systemctl restart OliveTin

systemctl status OliveTin
