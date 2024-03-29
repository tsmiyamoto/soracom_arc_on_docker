FROM ubuntu:20.04
RUN apt-get update && apt-get install -y wget iputils-ping net-tools python3 python3-pip
RUN wget https://github.com/soracom/soratun/releases/download/v1.2.0/soratun_1.2.0_linux_amd64.tar.gz
RUN tar xvf soratun_1.2.0_linux_amd64.tar.gz
RUN cp soratun_1.2.0_linux_amd64/soratun /usr/local/bin
COPY bootstrap.sh /root
COPY start.sh /root