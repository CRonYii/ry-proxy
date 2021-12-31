FROM debian:11

ARG V2RAY_PORT
ARG V2RAY_UUID

RUN apt-get update
RUN apt-get install v2ray

RUN mkdir /usr/local/etc/v2ray
RUN mkdir /var/log/v2ray 

ADD config.json /usr/local/etc/v2ray/config.json

WORKDIR /usr/local/etc/v2ray
RUN sed -i "s/\$inbound_port/${V2RAY_PORT}/" config.json
RUN sed -i "s/\$uuid/${V2RAY_UUID}/" config.json

CMD [ "v2ray", "-config", "/usr/local/etc/v2ray/config.json" ]
