cp /var/www/scripts/hydrate.sh /home/vagrant/hydrate.sh
chown vagrant:vagrant /home/vagrant/hydrate.sh
chmod 775 /home/vagrant/hydrate.sh

cd /home/vagrant
./hydrate.sh

mysql -u root -proot -e "CREATE USER 'wednesday'@'localhost' IDENTIFIED BY 'wednesday';"
mysql -u root -proot -e "GRANT ALL PRIVILEGES ON * . * TO 'wednesday'@'localhost';"
mysql -u root -proot -e "FLUSH PRIVILEGES;"