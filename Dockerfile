FROM ubuntu:latest
RUN apt update && apt install -y apache2 zip unzip
ADD https://templatemo.com/download/templatemo_610_aurum_gold/templatemo_610_aurum_gold.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip templatemo_610_aurum_gold.zip
RUN cp -rvf templatemo_610_aurum_gold/* .
RUN rm -rf templatemo_610_aurum_gold templatemo_610_aurum_gold.zip
CMD ["apache2ctl", "-D", "FOREGROUND"]
#CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80 443



