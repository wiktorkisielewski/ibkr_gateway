from openjdk:18-slim-buster

WORKDIR /
COPY gateway_setup.sh .
COPY allowed_ip .

RUN apt-get update && apt-get --assume-yes install wget unzip
RUN chmod +x gateway_setup.sh

CMD ["./gateway_setup.sh"]