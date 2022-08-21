#!/bin/bash

echo "Atualizando Linux"

apt update
apt upgrade -y


echo "Linux Atualizado"

echo "Instalando Apache2"

apt install apache2 -y

echo "Apache2 Instalado!"

echo "Instalando Unzip"

apt install unzip -y

echo "Unzip Instalado!"

echo "Baixar aplicação"

cd /tmp/
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 

echo "Aplicação baixada"

echo "Copiando aplicação"

cd /tmp/
cp main.zip /var/www/html
cd /var/www/html
unzip main.zip

echo "Aplicação copiada"