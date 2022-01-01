FROM haproxy:lts

USER root
RUN mkdir -p /run/haproxy

ADD haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

CMD ["haproxy", "-f", "/usr/local/etc/haproxy/haproxy.cfg"]
