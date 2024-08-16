# Docker_Compose

1. **create a .env file mention the below data**

-  MYSQL_ROOT_PASSWORD= ## your database root password
-  MYSQL_DATABASE= ## your database name
-  MYSQL_USER # your database user
   
2. **create a data file in mysql folder**

-  mkdir -p /Docker_Compose/mysql/data
-  sudo chmod -R 755 data

3. **update the file-permissions**

- sudo chmod -R 777 /home/mohit/Docker_Compose/mysql/data ## your file path
- sudo chown -R mysql:mysql /home/mohit/Docker_Compose/mysql/data ## changing permissions of the file ownership to mysql
  

