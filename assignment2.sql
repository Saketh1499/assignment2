-- Adminer 4.7.7 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

CREATE DATABASE `assignment2` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `assignment2`;

DROP TABLE IF EXISTS `assignment_sub`;
CREATE TABLE `assignment_sub` (
  `ass_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `roll_no` varchar(45) NOT NULL,
  `date` date NOT NULL,
  `sub` varchar(45) NOT NULL,
  `description` varchar(2000) NOT NULL,
  PRIMARY KEY (`roll_no`),
  UNIQUE KEY `ass_id` (`ass_id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `upld`;
CREATE TABLE `upld` (
  `upld_id` int(11) NOT NULL AUTO_INCREMENT,
  `roll_no` varchar(45) NOT NULL,
  `uimg` varchar(5000) NOT NULL,
  PRIMARY KEY (`upld_id`),
  KEY `roll_no` (`roll_no`),
  CONSTRAINT `upld_ibfk_2` FOREIGN KEY (`roll_no`) REFERENCES `assignment_sub` (`roll_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;


-- 2020-11-17 06:53:18
