su vagrant

cp /var/www/scripts/dump.sh ~/dump.sh
cp /var/www/scripts/hydrate.sh ~/hydrate.sh
chmod 775 ~/dump.sh
chmod 775 ~/hydrate.sh

cd ~
./hydrate.sh