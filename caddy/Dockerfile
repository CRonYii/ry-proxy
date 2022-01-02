FROM caddy:2

ARG DOMAIN_NAME
ARG V2RAY_PORT

WORKDIR /etc/caddy

ADD Caddyfile /etc/caddy/Caddyfile
RUN sed -i "s/\$DOMAIN_NAME/${DOMAIN_NAME}/g" Caddyfile
RUN sed -i "s/\$V2RAY_PORT/${V2RAY_PORT}/g" Caddyfile

RUN echo "Please review your Caddyfile as follow" && cat /etc/caddy/Caddyfile

ADD cert/${DOMAIN_NAME}.crt /etc/ssl/private/${DOMAIN_NAME}.crt
ADD cert/${DOMAIN_NAME}.key /etc/ssl/private/${DOMAIN_NAME}.key
