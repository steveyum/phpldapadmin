#!/usr/bin/env bash

sudo cp etc /etc/phpldapadmin
sudo cp share /usr/local/share/phpldapadmin

sudo chown www-data:www-data /etc/phpldapadmin/

sudo chmod -R 750 /etc/phpldapadmin/templates
sudo chmod 640 /etc/phpldapadmin/template.dtd

if [ -d /var/www/ ]; then
  sudo ln -s /usr/local/share/phpldapadmin /var/www/ldap
fi


