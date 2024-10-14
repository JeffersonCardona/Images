#!/bin/bash

VERSION=$1
NAME=$2
NETWORK=$3
SETTINGS=$4
LOGS=$5
WEBAPPS=$6

docker run -d --privileged --name $NAME --memory 2g --net $NETWORK -e TZ=America/Bogota -v $SETTINGS:/home/settings -v $LOGS:/home/apache-tomcat/logs -v $WEBAPPS:/home/apache-tomcat/webapps localhost/tomcat:$VERSION