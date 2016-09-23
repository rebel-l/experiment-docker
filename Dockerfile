# Nginx "Hello World"
#
# VERSION 0.0.1

FROM ubuntu:16.04
MAINTAINER Rebel L <dj@rebel-l.net>

LABEL vendor="Rebel L" \
      version="0.0.1" \
      description="This image just provides an Ubuntu 16.04 with Nginx and a personal 'Hello World!' page."

# Install nginx
RUN apt-get update && apt-get install -y nginx
EXPOSE 80
COPY etc/nginx/nginx.conf /etc/nginx/nginx.conf

# Add custom webpage
COPY src/index.html /var/www/html/

# start nginx
CMD service nginx start
