FROM arm64v8/centos:7
MAINTAINER peter.sarossy@gmail.com
RUN yum update -y && yum install -y wget perl openssl-devel
RUN wget -q -O - http://linux.dell.com/repo/hardware/latest/bootstrap.cgi | bash

RUN yum install -y srvadmin-idracadm7
ENV PATH "$PATH:/opt/dell/srvadmin/bin/idracadm"
CMD /opt/dell/srvadmin/sbin/racadm
