from openjdk:18-slim-buster

WORKDIR /
COPY gateway_setup.sh .
COPY ip_list .
COPY ip_list.sh .

RUN apt-get update && apt-get --assume-yes install wget unzip
RUN chmod +x gateway_setup.sh ip_list.sh

CMD ["./gateway_setup.sh"]