#!/bin/bash

cp /var/www/scripts/hydrate.sh /home/vagrant/hydrate.sh
chown vagrant:vagrant /home/vagrant/hydrate.sh
chmod 775 /home/vagrant/hydrate.sh

cd /home/vagrant
./hydrate.sh

mysql -u root -proot -e "CREATE USER 'wordpress'@'localhost' IDENTIFIED BY '1148833a10f331fe7a4caacb1406c2d16179dc67f44eccd9';"
mysql -u root -proot -e "GRANT ALL PRIVILEGES ON scotchbox.* TO 'wordpress'@'localhost';"
mysql -u root -proot -e "FLUSH PRIVILEGES;"

