FROM ubuntu:16.10
RUN apt update && apt install  -y shadowsocks-libev 
RUN apt-get install -y iptables 
ADD start.sh /root
ADD ./ss.conf /etc/ss.conf
USER root
CMD /root/start.sh