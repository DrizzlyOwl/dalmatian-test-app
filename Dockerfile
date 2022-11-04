FROM ubuntu:latest
LABEL org.opencontainers.image.source https://github.com/DrizzlyOwl/dalmatian-test-app

RUN apt-get update
RUN apt-get install -y nginx

ADD nginx.conf /etc/nginx/nginx.conf
ADD ./www /www

EXPOSE 80
CMD ["nginx"]
