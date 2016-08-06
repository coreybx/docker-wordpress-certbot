# docker-wordpress-certbot
A multi-container docker compose of a Wordpress instance with MariaDB and Let's Encryt's certbot setup


This compose will deliver wordpress and mariadb via their official images and install the dependancies required for Let's Encrypt's certbot.

Installation Pre-Reqs:
* docker-engine
* docker-compose

Installation Steps:
#Bring the hosts up (Note that the database may come up first requiring another restart)
#docker-compose up -d

#Auto sign the certificate for your webserver
#docker exec -i -t $containerid certbot --apache -m $emailaddress -d $domainname -w /var/www/html/ -n --agree-to --staging

Example:
#docker-compose up -d
#docker exec -i -t 8e1a2ed6c08b certbot --apache -m test@test.cm -d www.test.com -w /var/www/html/ -n --agree-to --staging
