FROM debian:bookworm-slim

RUN apt update && apt install -y apache2 zip unzip curl \
    && curl -L -o /tmp/template.zip https://templatemo.com/download/templatemo_610_aurum_gold/templatemo_610_aurum_gold.zip \
    && unzip /tmp/template.zip -d /tmp \
    && cp -rvf /tmp/templatemo_610_aurum_gold/* /var/www/html/ \
    && rm -rf /tmp/*

EXPOSE 80 443
CMD ["apache2ctl", "-D", "FOREGROUND"]

