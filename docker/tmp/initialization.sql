CREATE DATABASE  IF NOT EXISTS `example` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE example;

CREATE USER IF NOT EXISTS 'example_user'@'%' IDENTIFIED BY 'abc123';
GRANT ALL ON sampledb.* TO 'example_user'@'%';