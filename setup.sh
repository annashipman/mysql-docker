docker build -t tobi/mysql .
docker run --name openmrs -p 3306:3306 -d -e MYSQL_ROOT_PASSWORD=tobivogel tobi/mysql
