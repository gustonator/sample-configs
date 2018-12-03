echo "Apache2 & PHP setup"

#Install apache
apt-get update
apt-get install -y apache2

#Enable Apache mods
a2enmod rewrite	
	
#Add php repo
apt-add-repository ppa:ondrej/php
apt-get update

#install php
apt-get install -y php7.2

#PHP apache mod
apt-get install -y libapache2-mod-php7.2

#Restart Apache2
service apache2 restart

#PHP Mods
apt-get install -y php7.2-common
apt-get install -y php7.2-mcrypt
apt-get install -y php7.2-zip