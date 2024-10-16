#!/bin/bash
yum install -y epel-release
dnf update
dnf install -y zip 
dnf install -y supervisor
dnf install -y wget 
dnf install -y tar 
dnf install -y curl 
dnf install -y monit
dnf install -y java 
dnf install -y procps
yum install -y yum-utils

mkdir /home/temporal
cd /home/temporal
wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.31/bin/apache-tomcat-10.1.31.tar.gz
tar -xvzf apache-tomcat-10.1.31.tar.gz
mv /home/temporal/apache-tomcat-10.1.31/ /home/apache-tomcat/
rm -rf /home/apache-tomcat/webapps
rm -rf /home/apache-tomcat/logs
rm -rf /home/temporal