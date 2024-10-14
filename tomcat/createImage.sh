docker rmi "tomcat:$1"
docker build -t "tomcat:$1" .
docker image ls