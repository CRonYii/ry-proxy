FROM debian:11

ARG V2RAY_UUID
ARG V2RAY_ALTERID

RUN mkdir -p /usr/local/etc/v2ray \
    mkdir -p /var/log/v2ray \
    mkdir -p /usr/local/bin

ADD v2ray /usr/local/bin/v2ray
ADD v2ctl /usr/local/bin/v2ctl
ADD geoip.dat /usr/local/bin/geoip.dat
ADD geosite.dat /usr/local/bin/geosite.dat
ADD config.json /usr/local/etc/v2ray/config.json

WORKDIR /usr/local/etc/v2ray
RUN sed -i "s/\$uuid/${V2RAY_UUID}/" config.json
RUN sed -i "s/\$alter_id/${V2RAY_ALTERID}/" config.json

RUN v2ray -test -config /usr/local/etc/v2ray/config.json

CMD [ "v2ray", "-config", "/usr/local/etc/v2ray/config.json" ]
