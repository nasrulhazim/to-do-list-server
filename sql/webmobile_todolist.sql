/*
SQLyog Ultimate v9.63 
MySQL - 5.6.12-log : Database - webmobile_todolist
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`webmobile_todolist` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `webmobile_todolist`;

/*Table structure for table `tdl_tasks` */

DROP TABLE IF EXISTS `tdl_tasks`;

CREATE TABLE `tdl_tasks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `date` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tdl_tasks` */

insert  into `tdl_tasks`(`id`,`name`,`description`,`date`,`created`,`modified`) values (1,'Task A','Some task need to be done','2015-07-31 14:19:49','2015-07-28 14:19:58','2015-07-28 14:19:58'),(2,'Task B','Some task too','2015-07-30 14:36:43','2015-07-28 14:36:51','2015-07-28 14:36:51');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
