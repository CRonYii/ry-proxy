FROM debian:11

ARG V2RAY_PORT
ARG V2RAY_UUID

RUN mkdir -p /usr/local/etc/v2ray \
    mkdir -p /var/log/v2ray \
    mkdir -p /usr/local/bin

ADD v2ray /usr/local/bin/v2ray
ADD v2ctl /usr/local/bin/v2ctl
ADD config.json /usr/local/etc/v2ray/config.json

WORKDIR /usr/local/etc/v2ray
RUN sed -i "s/\$inbound_port/${V2RAY_PORT}/" config.json
RUN sed -i "s/\$uuid/${V2RAY_UUID}/" config.json

CMD [ "/usr/local/bin/v2ray", "-config", "/usr/local/etc/v2ray/config.json" ]
