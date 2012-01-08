# As much as I hate PHP, some essential packages for primarily Wordpress
# Using FPM for FastCGI
echo "apt-get -y update" | sudo sh
sudo apt-get install php-apc php-auth php-pear php5 php5-common \
	php5-curl php5-dev php5-gd php5-imagick php5-mcrypt php5-mysql \
	php5-sqlite php5-suhosin php5-xmlrpc php5-xsl php5-fpm libssh2-php
