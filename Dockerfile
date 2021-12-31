FROM debian:11

RUN apt-get update
RUN apt-get install v2ray

RUN mkdir /usr/local/etc/v2ray
RUN mkdir /var/log/v2ray 

ADD config.json /usr/local/etc/v2ray/config.json

EXPOSE 54823
CMD [ "v2ray", "-config", "/usr/local/etc/v2ray/config.json" ]
