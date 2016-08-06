#!/bin/bash
/entrypoint.sh apache2-background
certbot --apache -m $emailaddress -d $domainname -w /var/www/html/ -n --agree-to --staging
tail /var/log/apache2/access.log
