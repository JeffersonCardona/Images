FROM centos
RUN yum -y update
RUN yum -y install nginx
RUN echo "Hola mundo" >> /home/probando
