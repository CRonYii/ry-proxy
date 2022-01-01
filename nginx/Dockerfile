FROM nginx:mainline

ADD camouflage_site.conf /etc/nginx/conf.d/camouflage_site.conf
RUN mv /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf.bak

EXPOSE 80
