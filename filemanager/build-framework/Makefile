.PHONY: clean base

base:
	apt-get update -qq
	apt-get install -y build-essential wget software-properties-common
	add-apt-repository ppa:git-core/ppa -y
	add-apt-repository ppa:ondrej/php -y
	apt-get install git nodejs npm php8.1-fpm -y
	update-rc.d php8.1-fpm defaults
	
app:
	npm install -g bower
	cd /webapp && bower install --allow-root --save angular-filemanager
	# Replace default index with one with appropriate configuration
	cp index.html /webapp/bower_components/angular-filemanager/
	cp bridge-index.php /webapp/bower_components/angular-filemanager/bridges/php-local/index.php
