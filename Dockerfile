From centos:7

RUN yum update -y \
    && yum upgrade -y \
    && yum install httpd -y

COPY index.html /var/www/html/

