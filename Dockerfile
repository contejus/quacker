FROM alpine:3.17.3
RUN apk update && apk add curl
COPY ./duckdns_cronjob /etc/crontabs/root
CMD [ "crond", "-f", "-L", "/dev/stdout"]
