#!/bin/bash

wget -O gateway.zip https://download2.interactivebrokers.com/portal/clientportal.gw.zip \
&& mkdir -p gateway \
&& rm -f gateway/* \
&& unzip gateway.zip -d gateway/ \
&& rm gateway.zip \
&& cd gateway \
&& ./ip_list.sh \
&& bin/run.sh root/conf.yaml
