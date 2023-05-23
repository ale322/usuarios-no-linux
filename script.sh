#!/bin/bash

echo "Criando Diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando gupo de usuarios"

groupadd GRP_AIM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios"

useradd carlos -m -s /bin/bash -p $(openssl1 passwd -crypt Senha123) -G GRP_AIM
useradd maria -m -s /bin/bash -p $(openssl1 passwd -crypt Senha123) -G GRP_AIM
useradd joão -m -s /bin/bash -p $(openssl1 passwd -crypt Senha123) -G GRP_AIM

useradd debora -m -s /bin/bash -p $(openssl1 passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl1 passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl1 passwd -crypt Senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl1 passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl1 passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl1 passwd -crypt Senha123) -G GRP_SEC

echo "Especificando permissões dos diretrios..."

chown root:GRP_AIM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Acabou o script..."



