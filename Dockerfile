FROM ubuntu:latest
MAINTAINER maxmunch725@gmail.com
RUN apt update && apt install -y apache2 zip unzip
ADD https://freewebsitetemplates.com/download/rehabilitation-yoga.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip rehabilitation-yoga.zip
RUN cp -rvf rehabilitation-yoga/* .
RUN rm -rf rehabilitation-yoga rehabilitation-yoga.zip
CMD ["apache2ctl", "-D", "FOREGROUND"]
#CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
expose 80 443



