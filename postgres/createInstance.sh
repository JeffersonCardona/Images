#!/bin/bash

VERSION=$1
NAME=$2
MEMORY=$3
NETWORK=$4
SETTINGS=$5
DATA=$6

docker run -d --privileged --name $NAME --memory $MEMORY --net $NETWORK -p 5432:5432 -e TZ=America/Bogota -v $SETTINGS:/home/settings -v $DATA:/var/lib/pgsql/data/ localhost/postgres:$VERSION