# Docker_Compose

- create a .env file mention the below data

MYSQL_ROOT_PASSWORD= ## your database root password
MYSQL_DATABASE= ## your database name
MYSQL_USER # your database user
-----------

- create a data file in mysql folder

mkdir -p /Docker_Compose/mysql/data
sudo chmod -R 755 data
-----------

- mentioned both the files in .gitignore
.env
data
