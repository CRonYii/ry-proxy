FROM nginx:mainline

ARG DOMAIN_NAME
ADD camouflage_site.conf /etc/nginx/conf.d/default.conf

WORKDIR /etc/nginx
RUN sed -i "s/\$DOMAIN_NAME/${DOMAIN_NAME}/" conf.d/default.conf
