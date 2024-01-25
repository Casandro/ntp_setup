#!/bin/bash

apt-get install pps-tools ntp

cp conf/ntp.conf /etc/ntp.conf
cp conf/*.service /etc/systemd/system/

systemctl daemon-reload
systemctl enable ppsldisc.service
systemctl start ppsldisc.service
sleep 1
systemctl restart ntp
