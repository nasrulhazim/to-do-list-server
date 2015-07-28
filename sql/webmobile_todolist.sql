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
  `status` varchar(128) DEFAULT 'Pending',
  `date` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `tdl_tasks` */

insert  into `tdl_tasks`(`id`,`name`,`description`,`status`,`date`,`created`,`modified`) values (2,'Task B','Something need to be done 2','In Progress','2015-07-08 00:00:00','2015-07-28 14:36:51','2015-07-28 00:00:00'),(3,'task api 2','something about api 2','Pending','2015-07-31 00:00:00',NULL,'2015-07-28 00:00:00'),(10,'test','test','Pending','2015-07-31 00:00:00',NULL,NULL),(11,'asdas','asdasd','Pending','2015-08-13 00:00:00',NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
