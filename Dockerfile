#TURNSERVER
#
#VERSION  0.0.1

FROM ubuntu:14.04

MAINTAINER MrNull

RUN apt-get update; apt-get install -y  wget supervisor  docker.io

RUN apt-get install -y libssl-dev libevent-dev libpq-dev mysql-client libmysqlclient-dev libhiredis-dev telnet

RUN wget http://ftp.us.debian.org/debian/pool/main/c/coturn/coturn_4.2.1.2-1_amd64.deb

RUN dpkg -i coturn_4.2.1.2-1_amd64.deb

EXPOSE 3478 3478/udp
