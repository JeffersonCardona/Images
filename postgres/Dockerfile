FROM rockylinux:9

COPY ./install.sh /root/install.sh
COPY ./start.sh /home/start.sh

EXPOSE 80 22 31022 31023 31024 31042

RUN bash /root/install.sh
CMD bash /home/start.sh