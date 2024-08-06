# DATABASE WITH DOCKER

## INSTALLATION

#### INSTALL DOCKER

Download and install Docker from the official website

https://www.docker.com/products/docker-desktop/

#### PULL MYSQL IMAGE

Pull the latest MySQL image from Docker Hub:

    docker pull mysql

## START CONTAINER

Start a mysql container using docker compose file.

    https://github.com/hareem211/sql-queries/blob/master/compose.yaml

### CONNECT TO MYSQL CONTAINER

    docker exec -it mydb mysql -uroot -p

## CREATE DATABASE

Create a new DATABASE mydb using using the MYSQL command-line tool.

    docker compose exec db mysql -u root -proot_pass -e "CREATE DATABASE IF NOT EXISTS mydb;"

## DUMP DATABASE

 Dump the database to MYSQL file:

    docker compose exec db mysqldump -u root -proot_pass  mydb > dump.sql

## DROP DATABASE

Drop the database using following command:

    docker compose exec db mysql -u root -proot_pass -e "DROP DATABASE IF EXISTS mydb;"

## RECREATE DATABASE dump file

Recreate the database dump file:

    docker compose exec -T "db" mysql -u root -proot_pass mydb < dump.sql