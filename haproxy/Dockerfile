FROM haproxy:lts

ARG DOMAIN_NAME
ARG V2RAY_PORT

USER root
RUN mkdir /run/haproxy
RUN mkdir -p /var/lib/haproxy && chown -R haproxy:haproxy /var/lib/haproxy

ADD haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
ADD ${DOMAIN_NAME}.pem /etc/ssl/private/${DOMAIN_NAME}.pem

WORKDIR /usr/local/etc/haproxy
RUN sed -i "s/\$DOMAIN_NAME/${DOMAIN_NAME}/" haproxy.cfg
RUN sed -i "s/\$V2RAY_PORT/${V2RAY_PORT}/" haproxy.cfg

CMD ["haproxy", "-f", "/usr/local/etc/haproxy/haproxy.cfg"]
