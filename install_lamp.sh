#!/bin/bash
echo "Mise à jour du système..."
apt update && apt upgrade -y

echo "Installation des paquets LAMP..."
apt install -y apache2 mariadb-server php php-mysql libapache2-mod-php \
php-xml php-mbstring unzip wget

echo "Activation et démarrage des services..."
systemctl enable apache2
systemctl enable mariadb
systemctl start apache2
systemctl start mariadb

echo "Création d'un fichier PHP de test..."
echo "<?php phpinfo(); ?>" > /var/www/html/info.php

echo "Installation terminée. Testez via http://[IP_VM]/info.php"
