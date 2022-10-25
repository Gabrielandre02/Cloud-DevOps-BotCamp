!#/bin/bash

yum update -y
yum install httpd unzip -y
cd /tmp
echo "BAIXANDO E COPIANDO A APLICAÇAO"
wget https://github.com/Gabrielandre02/PORTIFOLIO/archive/refs/heads/master.zip
unzip master.zip
cd PORTIFOLIO-master/
cp -R * /var/www/html/
echo "Ativando o serviço"
systemctl enable --now httpd