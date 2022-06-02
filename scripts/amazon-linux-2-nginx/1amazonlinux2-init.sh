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
npm install pm2 -g

echo Instalar yarn
npm install yarn -g

echo Instalar NginX
sudo amazon-linux-extras install rust1

echo Revisar la versión instalada de linux
cat /etc/os-release



[user@hostname ~]$ ssh root@pong
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@    WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!     @
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
IT IS POSSIBLE THAT SOMEONE IS DOING SOMETHING NASTY!
Someone could be eavesdropping on you right now (man-in-the-middle attack)!
It is also possible that a host key has just been changed.
The fingerprint for the RSA key sent by the remote host is
6e:45:f9:a8:af:38:3d:a1:a5:c7:76:1d:02:f8:77:00.
Please contact your system administrator.
Add correct host key in /home/hostname /.ssh/known_hosts to get rid of this message.
Offending RSA key in /var/lib/sss/pubconf/known_hosts:4
RSA host key for pong has changed and you have requested strict checking.
Host key verification failed.

use this

rm ~/.ssh/known_hosts

