FROM centos:7

ENV http_proxy=http://web-proxy.in.softwaregrp.net:8080/ \
    https_proxy=http://web-proxy.in.softwaregrp.net:8080/ \
    BOOT_DIR=/tmp/install/boot.d

RUN yum install wget gcc-c++ ca-certificates nginx gettext-tools -y

RUN yum install kernel-devel make man -y

RUN mkdir -p /tmp/install

COPY ./install /tmp/install

RUN /tmp/install/boot.sh 

EXPOSE 6379 16379 6001

RUN ln -s /tmp/install/startupscript.sh

ENTRYPOINT ["./startupscript.sh"]

