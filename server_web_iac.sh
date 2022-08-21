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
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
cd /var/www/html
echo "Aplicação copiada"

echo "Apagando arquivos temporários"
cd /tmp/
rm -Rf main.zip
rm -Rf linux-site-dio-main
ls -lh
echo "Arquivos apagados"

echo "Serviro Web Configurado e site no ar"