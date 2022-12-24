#!/bin/sh
cd /var/www/vhosts/nerdfactory.online
docker compose down --rmi all
docker volume prune -f
mkdir /var/www/vhosts/nerdfactory.online/config
docker compose up -d --always-recreate-deps --build
docker image prune -a -f