FROM 1and1internet/ubuntu-16-apache:latest
MAINTAINER christopher.james@1and1.co.uk
ARG DEBIAN_FRONTEND=noninteractive
RUN \
  apt-get update && apt-get install -y libapache2-mod-perl2 libcgi-pm-perl && \
  /usr/sbin/a2enmod cgi && \
  rm -rf /var/lib/apt/lists/*
COPY files /
EXPOSE 8080
#USER 27
