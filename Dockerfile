#Download base image ubuntu 16.04
FROM ubuntu:16.04
# Update Ubuntu Software repository
RUN apt-get update
RUN apt-get install -y nginx

ADD conf/nginx /etc/nginx/sites-enabled

