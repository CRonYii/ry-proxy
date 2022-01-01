FROM haproxy:lts

USER root
RUN mkdir -p /run/haproxy

ADD example.com.pem /etc/ssl/private/example.com.pem
ADD haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

CMD ["haproxy", "-f", "/usr/local/etc/haproxy/haproxy.cfg"]
