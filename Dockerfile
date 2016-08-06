FROM wordpress
RUN echo "deb http://ftp.debian.org/debian jessie-backports main" >> /etc/apt/sources.list
RUN apt-get update && apt-get install -y ssl-cert openssl
RUN a2enmod ssl
RUN a2ensite default-ssl
RUN apt-get install -y python-certbot-apache -t jessie-backports
