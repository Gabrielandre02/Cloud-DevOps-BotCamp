#!/bin/bash

echo "criando diretor"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "criando grupos de usuarios"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando usuarios"

useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEN
useradd JULIA -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEN

useradd dias -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd andre -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd gabriel -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "fim ..."