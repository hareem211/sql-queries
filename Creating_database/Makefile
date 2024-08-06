help:
	@echo "To run any command from make file"

create_db: #create a mysql database mydb
	docker compose exec db mysql -u root -proot_pass -e "CREATE DATABASE IF NOT EXISTS mydb;"

drop_db: #drop a mysql database mydb
	docker compose exec db mysql -u root -proot_pass -e "DROP DATABASE IF EXISTS mydb;"

dump_db: #create a mysql database dump file
	docker compose exec db mysqldump -u root -proot_pass  mydb > dump.sql

restore_db: #restore the database dump file
	docker compose exec -T "db" mysql -u root -proot_pass mydb < dump.sql

copy_db: #copy dumped file from docker to local
	docker compose cp db:/dump.sql ./	