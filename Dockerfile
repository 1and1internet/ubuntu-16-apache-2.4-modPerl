FROM 1and1internet/ubuntu-16-apache-2.4:latest
MAINTAINER james.wilkins@1and1.co.uk
ARG DEBIAN_FRONTEND=noninteractive
RUN \
  apt-get update && apt-get install -y libapache2-mod-perl2 && \
  rm -rf /var/lib/apt/lists/*
WORKDIR /var/www
COPY files /
EXPOSE 8080
#USER 27

