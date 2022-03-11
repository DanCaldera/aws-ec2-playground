echo Agrega el siguiente código en esta dirección sudo vim /etc/yum.repos.d/nginx.repo
echo [nginx]
echo name=nginx repo
echo baseurl=https://nginx.org/packages/centos/7/$basearch/
echo gpgcheck=0
echo enabled=1

echo por último instala nginx con el comando sudo yum install nginx

echo Verifica tu versión con nginx -v

echo Inicia Nginx con sudo service nginx start