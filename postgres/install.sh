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
dnf module enable -y postgresql:16
dnf install -y postgresql-server