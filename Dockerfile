FROM alpine
RUN apk add --no-cache nginx curl
RUN mkdir -p /etc/confd/conf.d
RUN mkdir -p /etc/confd/templates
RUN mkdir -p /run/nginx
COPY confd .
RUN chmod +x confd
COPY nginx.toml /etc/confd/conf.d/
COPY nginx.tmpl /etc/confd/templates/
COPY boot.sh .
COPY watcher.sh .
COPY check-nginx-config.sh .
EXPOSE 80 443
CMD ["./boot.sh"]
