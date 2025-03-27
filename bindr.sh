#!/bin/bash

apt-get install bind bind-utils
systemctl enable --now bind
mkdir /etc/bind/zone/master

cp /bindr/au-team.irpo /etc/bind/zone/master/au-team.irpo
cp /bindr/10.168.192.in-addr.arpa /etc/bind/zone/master/10.168.192.in-addr.arpa

chown root:named /etc/bind/zone/master
chown root:named /etc/bind/zone/master/*

cp -p /bindr/local.conf /etc/bind/local.conf

echo "Не забудь настроить options.conf, а после перезагрузить bind"
