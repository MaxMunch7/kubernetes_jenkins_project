FROM centos:7
MAINTAINER maxmunch725@gmail.com
RUN yum install -y httpd\
 zip\
 unzip
ADD https://freewebsitetemplates.com/download/rehabilitation-yoga/rehabilitation-yoga.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip rehabilitation-yoga.zip
RUN cp -rvf rehabilitation-yoga/* .
RUN rm -rf rehabilitation-yoga rehabilitation-yoga.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
expose 80 443
