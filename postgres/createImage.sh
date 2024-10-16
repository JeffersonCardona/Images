docker rmi "postgres:$1"
docker build -t "postgres:$1" .
docker image ls