#!/bin/bash

vagrant ssh -- 'mysqldump -u root -proot scotchbox > /var/www/db/local/local.sql'