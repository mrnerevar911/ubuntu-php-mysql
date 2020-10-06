docker run -d -p 80:80 -v /home/eugene/dev/phpApp/src:/var/www/app --name php-app-container --network=php-app-network php-app
