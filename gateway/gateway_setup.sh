#!/bin/bash

LOCAL_IP=$(hostname -I | awk '{print $1}')
ALLOWED_IP=$(cat allowed_ip)

wget -O gateway.zip https://download2.interactivebrokers.com/portal/clientportal.gw.zip \
&& mkdir -p gateway \
&& rm -f gateway/* \
&& unzip gateway.zip -d gateway/ \
&& rm gateway.zip \
&& cd gateway \
&& sed -i -e 's@deny:@  - '"$LOCAL_IP"'\n        - '"$ALLOWED_IP"'\n      deny:@g' root/conf.yaml \
&& bin/run.sh root/conf.yaml
