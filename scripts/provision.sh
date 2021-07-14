cp /var/www/scripts/hydrate.sh /home/vagrant/hydrate.sh
chown vagrant:vagrant /home/vagrant/hydrate.sh
chmod 775 /home/vagrant/hydrate.sh

cd /home/vagrant
./hydrate.sh