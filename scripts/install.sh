#!/bin/sh
wget https://github.com/OliveTin/OliveTin/releases/download/2022-04-07/OliveTin_2022-04-07_linux_armv7.deb

dpkg -i OliveTin_2022-04-07_linux_armv7.deb

systemctl enable --now OliveTin

systemctl status OliveTin

./update-config.sh
