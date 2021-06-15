From centos:7

RUN yum update -y \
    && yum upgrade -y \
    && yum install httpd -y

COPY index.html /var/www/html/

EXPOSE 80

ADD run-httpd.sh /run-httpd.sh
RUN chmod -v +x /run-httpd.sh

CMD ["/run-httpd.sh"]
