#!/bin/bash

echo Actualización de paquetes:
sudo yum update -y
 
echo Instalar git en tu instancia de EC2
sudo yum install git -y
 
echo Revisar la versión de git
git version

echo Instalar pm2
npm install pm2 -g

echo Instalar yarn
npm install yarn -g

echo Instalar NginX
sudo amazon-linux-extras install rust1

echo Revisar la versión instalada de linux
cat /etc/os-release

