CREATE USER 'swcamp'@'%' IDENTIFIED BY 'swcamp';
SHOW DATABASES;
USE mysql;
SELECT * FROM USER;
CREATE DATABASE petdb;
SHOW GRANTS FOR 'swcamp'@'%';
GRANT ALL PRIVILEGES ON petdb. * TO 'swcamp'@'%';
SHOW GRANTS FOR 'swcamp'@'%';

