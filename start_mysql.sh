docker run -d -v /home/eugene/dev/phpApp/.data/mysql:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=secret --network-php-app-network --name=mysql mysql:5.7.24
