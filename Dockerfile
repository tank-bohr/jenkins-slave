FROM centos:latest
MAINTAINER Alexey Niktin <niktin@corp.sputnik.ru>

RUN yum install -y openssh-server java-1.7.0-openjdk
# Adds user jenkins with password jenkins
RUN useradd --password `openssl passwd -salt qq -crypt jenkins` jenkins

EXPOSE 22

CMD ["/etc/init.d/sshd", "start"]
