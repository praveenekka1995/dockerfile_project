FROM docker.io/dokken/centos-8:latest
RUN yum install httpd zip unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page293/vertex.zip /var/www/html
WORKDIR /var/www/html
RUN unzip vertex.zip
RUN rm -rf vertex.zip
RUN cp -rf /root/2124_vertex/* /root
RUN rm -rf 2124_vertex
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FORGROUND"]
