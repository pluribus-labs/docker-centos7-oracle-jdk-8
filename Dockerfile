FROM centos:centos7

MAINTAINER Pluribus Labs Docker Dev <docker-dev@pluribuslabs.com>

RUN yum -y install wget && \
    wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jdk-8u92-linux-x64.rpm && \
    echo "881ee6070efcb427204f04c98db9a173  jdk-8u92-linux-x64.rpm" >> MD5SUM && \
    md5sum -c MD5SUM && \
    rpm -Uvh jdk-8u92-linux-x64.rpm && \
    rm -f jdk-8u60-linux-x64.rpm MD5SUM
