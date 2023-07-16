FROM docker.io/dokken/centos-8:latest
RUN yum install httpd zip unzip -y
ADD http://
WORKDIR /var/www/html
RUN unzip brighton.zip
RUN rm -rf brighton.zip
RUN cp -rf brighton-html/*
RUN rm -rf brighton-html
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FORGROUND"]
