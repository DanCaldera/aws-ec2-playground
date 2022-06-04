#!/bin/bash

echo Actualización de paquetes:
sudo yum update -y

echo install nodejs
curl -fsSL https://rpm.nodesource.com/setup_16.x | sudo bash -
sudo yum install -y nodejs

echo Instalar git en tu instancia de EC2
sudo yum install git -y

echo Revisar la versión de git
git version

echo Instalar pm2
sudo npm install pm2 -g

echo Instalar yarn
sudo npm install yarn -g

echo Instalar NginX
sudo amazon-linux-extras install rust1

echo Revisar la versión instalada de linux
cat /etc/os-release

echo Agrega archivo de configuración de Nginx
sudo echo "[nginx]
name=nginx repo
baseurl=https://nginx.org/packages/centos/7/$basearch/
gpgcheck=0
enabled=1" > /etc/yum.repos.d/nginx.repo