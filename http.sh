#!/bin/bash
echo " Atualizando o sistema"
apt-get update
apt-get upgrade -y

echo " instalando o servico apache"

apt-get install apache2 -y
apt-get install unzip -y

echo "instalando aplicação"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html

echo "Fim da instalação"
