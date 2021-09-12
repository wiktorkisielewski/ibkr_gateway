#!/bin/bash

wget -O gateway.zip https://download2.interactivebrokers.com/portal/clientportal.gw.zip \
&& if [ -d "gateway" ]; then rm -Rf gateway; fi \
&& mkdir  gateway \
&& unzip gateway.zip -d gateway/ \
&& rm gateway.zip \
&& mv ip_list* gateway && cd gateway \
&& ./ip_list.sh \
&& bin/run.sh root/conf.yaml
