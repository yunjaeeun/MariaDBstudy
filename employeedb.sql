CREATE USER 'practice'@'%' IDENTIFIED BY 'practice';

SHOW DATABASES;

USE mysql;

SELECT * FROM USER;

CREATE DATABASE employeedb;

SHOW GRANTS FOR 'practice'@'%';

GRANT ALL PRIVILEGES ON employeedb.* TO 'practice'@'%';

USE employeedb;