FROM centos:latest
MAINTAINER Alexey Niktin <niktin@corp.sputnik.ru>

RUN yum install -y openssh-server java-1.7.0-openjdk subversion git boost icu
# Adds user jenkins with password jenkins
RUN useradd --password `openssl passwd -crypt jenkins` jenkins

EXPOSE 22

CMD ["service", "sshd", "start"]
