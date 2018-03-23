FROM ubuntu:16.04 
MAINTAINER Ivan Froiz <ifrzmgz@gmail.es>  

ADD scripts/* /root/  RUN apt-get update \         
    && apt-get install -y iputils-ping vim.tiny iptables openconnect  

CMD /root/init.sh
