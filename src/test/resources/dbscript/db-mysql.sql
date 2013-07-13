/*
SQLyog Community v10.4 
MySQL - 5.1.50-community-log : Database - s_mybatis
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`s_mybatis` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `s_mybatis`;

/*Table structure for table `account` */

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `USERID` varchar(80) NOT NULL,
  `EMAIL` varchar(80) NOT NULL,
  `FIRSTNAME` varchar(80) NOT NULL,
  `LASTNAME` varchar(80) NOT NULL,
  `STATUS` varchar(2) DEFAULT NULL,
  `ADDR1` varchar(80) NOT NULL,
  `ADDR2` varchar(40) DEFAULT NULL,
  `CITY` varchar(80) NOT NULL,
  `STATE` varchar(80) NOT NULL,
  `ZIP` varchar(20) NOT NULL,
  `COUNTRY` varchar(20) NOT NULL,
  `PHONE` varchar(80) NOT NULL,
  PRIMARY KEY (`USERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `account` */

insert  into `account`(`USERID`,`EMAIL`,`FIRSTNAME`,`LASTNAME`,`STATUS`,`ADDR1`,`ADDR2`,`CITY`,`STATE`,`ZIP`,`COUNTRY`,`PHONE`) values ('ACID','acid@yourdomain.com','ABC','XYX','OK','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','555-555-5555'),('j2ee','yourname@yourdomain.com','ABC','XYX','OK','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','555-555-5555');

/*Table structure for table `bannerdata` */

DROP TABLE IF EXISTS `bannerdata`;

CREATE TABLE `bannerdata` (
  `FAVCATEGORY` varchar(80) NOT NULL,
  `BANNERNAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`FAVCATEGORY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `bannerdata` */

insert  into `bannerdata`(`FAVCATEGORY`,`BANNERNAME`) values ('BIRDS','<image src=\"../images/banner_birds.gif\">'),('CATS','<image src=\"../images/banner_cats.gif\">'),('DOGS','<image src=\"../images/banner_dogs.gif\">'),('FISH','<image src=\"../images/banner_fish.gif\">'),('REPTILES','<image src=\"../images/banner_reptiles.gif\">');

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `CATID` varchar(10) NOT NULL,
  `NAME` varchar(80) DEFAULT NULL,
  `DESCN` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CATID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `category` */

insert  into `category`(`CATID`,`NAME`,`DESCN`) values ('BIRDS','Birds','<image src=\"../images/birds_icon.gif\"><font size=\"5\" color=\"blue\"> Birds</font>'),('CATS','Cats','<image src=\"../images/cats_icon.gif\"><font size=\"5\" color=\"blue\"> Cats</font>'),('DOGS','Dogs','<image src=\"../images/dogs_icon.gif\"><font size=\"5\" color=\"blue\"> Dogs</font>'),('FISH','Fish','<image src=\"../images/fish_icon.gif\"><font size=\"5\" color=\"blue\"> Fish</font>'),('REPTILES','Reptiles','<image src=\"../images/reptiles_icon.gif\"><font size=\"5\" color=\"blue\"> Reptiles</font>');

/*Table structure for table `inventory` */

DROP TABLE IF EXISTS `inventory`;

CREATE TABLE `inventory` (
  `ITEMID` varchar(10) NOT NULL,
  `QTY` int(11) NOT NULL,
  PRIMARY KEY (`ITEMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `inventory` */

insert  into `inventory`(`ITEMID`,`QTY`) values ('EST-1',10000),('EST-10',10000),('EST-11',10000),('EST-12',10000),('EST-13',10000),('EST-14',10000),('EST-15',10000),('EST-16',10000),('EST-17',10000),('EST-18',10000),('EST-19',10000),('EST-2',10000),('EST-20',10000),('EST-21',10000),('EST-22',10000),('EST-23',10000),('EST-24',10000),('EST-25',10000),('EST-26',10000),('EST-27',10000),('EST-28',10000),('EST-3',10000),('EST-4',10000),('EST-5',10000),('EST-6',10000),('EST-7',10000),('EST-8',10000),('EST-9',10000);

/*Table structure for table `item` */

DROP TABLE IF EXISTS `item`;

CREATE TABLE `item` (
  `ITEMID` varchar(10) NOT NULL,
  `PRODUCTID` varchar(10) NOT NULL,
  `LISTPRICE` decimal(10,2) DEFAULT NULL,
  `UNITCOST` decimal(10,2) DEFAULT NULL,
  `SUPPLIER` int(11) DEFAULT NULL,
  `STATUS` varchar(2) DEFAULT NULL,
  `ATTR1` varchar(80) DEFAULT NULL,
  `ATTR2` varchar(80) DEFAULT NULL,
  `ATTR3` varchar(80) DEFAULT NULL,
  `ATTR4` varchar(80) DEFAULT NULL,
  `ATTR5` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`ITEMID`),
  KEY `FK_ITEM_2` (`SUPPLIER`),
  KEY `ITEMPROD` (`PRODUCTID`),
  CONSTRAINT `FK_ITEM_1` FOREIGN KEY (`PRODUCTID`) REFERENCES `product` (`PRODUCTID`),
  CONSTRAINT `FK_ITEM_2` FOREIGN KEY (`SUPPLIER`) REFERENCES `supplier` (`SUPPID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `item` */

insert  into `item`(`ITEMID`,`PRODUCTID`,`LISTPRICE`,`UNITCOST`,`SUPPLIER`,`STATUS`,`ATTR1`,`ATTR2`,`ATTR3`,`ATTR4`,`ATTR5`) values ('EST-1','FI-SW-01',16.50,10.00,1,'P','Large',NULL,NULL,NULL,NULL),('EST-10','K9-DL-01',18.50,12.00,1,'P','Spotted Adult Female',NULL,NULL,NULL,NULL),('EST-11','RP-SN-01',18.50,12.00,1,'P','Venomless',NULL,NULL,NULL,NULL),('EST-12','RP-SN-01',18.50,12.00,1,'P','Rattleless',NULL,NULL,NULL,NULL),('EST-13','RP-LI-02',18.50,12.00,1,'P','Green Adult',NULL,NULL,NULL,NULL),('EST-14','FL-DSH-01',58.50,12.00,1,'P','Tailless',NULL,NULL,NULL,NULL),('EST-15','FL-DSH-01',23.50,12.00,1,'P','With tail',NULL,NULL,NULL,NULL),('EST-16','FL-DLH-02',93.50,12.00,1,'P','Adult Female',NULL,NULL,NULL,NULL),('EST-17','FL-DLH-02',93.50,12.00,1,'P','Adult Male',NULL,NULL,NULL,NULL),('EST-18','AV-CB-01',193.50,92.00,1,'P','Adult Male',NULL,NULL,NULL,NULL),('EST-19','AV-SB-02',15.50,2.00,1,'P','Adult Male',NULL,NULL,NULL,NULL),('EST-2','FI-SW-01',16.50,10.00,1,'P','Small',NULL,NULL,NULL,NULL),('EST-20','FI-FW-02',5.50,2.00,1,'P','Adult Male',NULL,NULL,NULL,NULL),('EST-21','FI-FW-02',5.29,1.00,1,'P','Adult Female',NULL,NULL,NULL,NULL),('EST-22','K9-RT-02',135.50,100.00,1,'P','Adult Male',NULL,NULL,NULL,NULL),('EST-23','K9-RT-02',145.49,100.00,1,'P','Adult Female',NULL,NULL,NULL,NULL),('EST-24','K9-RT-02',255.50,92.00,1,'P','Adult Male',NULL,NULL,NULL,NULL),('EST-25','K9-RT-02',325.29,90.00,1,'P','Adult Female',NULL,NULL,NULL,NULL),('EST-26','K9-CW-01',125.50,92.00,1,'P','Adult Male',NULL,NULL,NULL,NULL),('EST-27','K9-CW-01',155.29,90.00,1,'P','Adult Female',NULL,NULL,NULL,NULL),('EST-28','K9-RT-01',155.29,90.00,1,'P','Adult Female',NULL,NULL,NULL,NULL),('EST-3','FI-SW-02',18.50,12.00,1,'P','Toothless',NULL,NULL,NULL,NULL),('EST-4','FI-FW-01',18.50,12.00,1,'P','Spotted',NULL,NULL,NULL,NULL),('EST-5','FI-FW-01',18.50,12.00,1,'P','Spotless',NULL,NULL,NULL,NULL),('EST-6','K9-BD-01',18.50,12.00,1,'P','Male Adult',NULL,NULL,NULL,NULL),('EST-7','K9-BD-01',18.50,12.00,1,'P','Female Puppy',NULL,NULL,NULL,NULL),('EST-8','K9-PO-02',18.50,12.00,1,'P','Male Puppy',NULL,NULL,NULL,NULL),('EST-9','K9-DL-01',18.50,12.00,1,'P','Spotless Male Puppy',NULL,NULL,NULL,NULL);

/*Table structure for table `lineitem` */

DROP TABLE IF EXISTS `lineitem`;

CREATE TABLE `lineitem` (
  `ORDERID` int(11) NOT NULL,
  `LINENUM` int(11) NOT NULL,
  `ITEMID` varchar(10) NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `UNITPRICE` decimal(10,2) NOT NULL,
  PRIMARY KEY (`ORDERID`,`LINENUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lineitem` */

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `ORDERID` int(11) NOT NULL,
  `USERID` varchar(80) NOT NULL,
  `ORDERDATE` date NOT NULL,
  `SHIPADDR1` varchar(80) NOT NULL,
  `SHIPADDR2` varchar(80) DEFAULT NULL,
  `SHIPCITY` varchar(80) NOT NULL,
  `SHIPSTATE` varchar(80) NOT NULL,
  `SHIPZIP` varchar(20) NOT NULL,
  `SHIPCOUNTRY` varchar(20) NOT NULL,
  `BILLADDR1` varchar(80) NOT NULL,
  `BILLADDR2` varchar(80) DEFAULT NULL,
  `BILLCITY` varchar(80) NOT NULL,
  `BILLSTATE` varchar(80) NOT NULL,
  `BILLZIP` varchar(20) NOT NULL,
  `BILLCOUNTRY` varchar(20) NOT NULL,
  `COURIER` varchar(80) NOT NULL,
  `TOTALPRICE` decimal(10,2) NOT NULL,
  `BILLTOFIRSTNAME` varchar(80) NOT NULL,
  `BILLTOLASTNAME` varchar(80) NOT NULL,
  `SHIPTOFIRSTNAME` varchar(80) NOT NULL,
  `SHIPTOLASTNAME` varchar(80) NOT NULL,
  `CREDITCARD` varchar(80) NOT NULL,
  `EXPRDATE` varchar(7) NOT NULL,
  `CARDTYPE` varchar(80) NOT NULL,
  `LOCALE` varchar(80) NOT NULL,
  PRIMARY KEY (`ORDERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `orders` */

/*Table structure for table `orderstatus` */

DROP TABLE IF EXISTS `orderstatus`;

CREATE TABLE `orderstatus` (
  `ORDERID` int(11) NOT NULL,
  `LINENUM` int(11) NOT NULL,
  `TIMESTAMP` date NOT NULL,
  `STATUS` varchar(2) NOT NULL,
  PRIMARY KEY (`ORDERID`,`LINENUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `orderstatus` */

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `PRODUCTID` varchar(10) NOT NULL,
  `CATEGORY` varchar(10) NOT NULL,
  `NAME` varchar(80) DEFAULT NULL,
  `DESCN` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PRODUCTID`),
  KEY `PRODUCTCAT` (`CATEGORY`),
  KEY `PRODUCTNAME` (`NAME`),
  CONSTRAINT `FK_PRODUCT_1` FOREIGN KEY (`CATEGORY`) REFERENCES `category` (`CATID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`PRODUCTID`,`CATEGORY`,`NAME`,`DESCN`) values ('AV-CB-01','BIRDS','Amazon Parrot','<image src=\"../images/bird2.gif\">Great companion for up to 75 years'),('AV-SB-02','BIRDS','Finch','<image src=\"../images/bird1.gif\">Great stress reliever'),('FI-FW-01','FISH','Koi','<image src=\"../images/fish3.gif\">Fresh Water fish from Japan'),('FI-FW-02','FISH','Goldfish','<image src=\"../images/fish2.gif\">Fresh Water fish from China'),('FI-SW-01','FISH','Angelfish','<image src=\"../images/fish1.gif\">Salt Water fish from Australia'),('FI-SW-02','FISH','Tiger Shark','<image src=\"../images/fish4.gif\">Salt Water fish from Australia'),('FL-DLH-02','CATS','Persian','<image src=\"../images/cat1.gif\">Friendly house cat, doubles as a princess'),('FL-DSH-01','CATS','Manx','<image src=\"../images/cat2.gif\">Great for reducing mouse populations'),('K9-BD-01','DOGS','Bulldog','<image src=\"../images/dog2.gif\">Friendly dog from England'),('K9-CW-01','DOGS','Chihuahua','<image src=\"../images/dog4.gif\">Great companion dog'),('K9-DL-01','DOGS','Dalmation','<image src=\"../images/dog5.gif\">Great dog for a Fire Station'),('K9-PO-02','DOGS','Poodle','<image src=\"../images/dog6.gif\">Cute dog from France'),('K9-RT-01','DOGS','Golden Retriever','<image src=\"../images/dog1.gif\">Great family dog'),('K9-RT-02','DOGS','Labrador Retriever','<image src=\"../images/dog5.gif\">Great hunting dog'),('RP-LI-02','REPTILES','Iguana','<image src=\"../images/lizard1.gif\">Friendly green friend'),('RP-SN-01','REPTILES','Rattlesnake','<image src=\"../images/snake1.gif\">Doubles as a watch dog');

/*Table structure for table `profile` */

DROP TABLE IF EXISTS `profile`;

CREATE TABLE `profile` (
  `USERID` varchar(80) NOT NULL,
  `LANGPREF` varchar(80) NOT NULL,
  `FAVCATEGORY` varchar(30) DEFAULT NULL,
  `MYLISTOPT` int(11) DEFAULT NULL,
  `BANNEROPT` int(11) DEFAULT NULL,
  PRIMARY KEY (`USERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `profile` */

insert  into `profile`(`USERID`,`LANGPREF`,`FAVCATEGORY`,`MYLISTOPT`,`BANNEROPT`) values ('ACID','english','CATS',1,1),('j2ee','english','DOGS',1,1);

/*Table structure for table `sequence` */

DROP TABLE IF EXISTS `sequence`;

CREATE TABLE `sequence` (
  `NAME` varchar(30) NOT NULL,
  `NEXTID` int(11) NOT NULL,
  PRIMARY KEY (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sequence` */

insert  into `sequence`(`NAME`,`NEXTID`) values ('ordernum',1000);

/*Table structure for table `signon` */

DROP TABLE IF EXISTS `signon`;

CREATE TABLE `signon` (
  `USERNAME` varchar(25) NOT NULL,
  `PASSWORD` varchar(25) NOT NULL,
  PRIMARY KEY (`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `signon` */

insert  into `signon`(`USERNAME`,`PASSWORD`) values ('ACID','ACID'),('j2ee','j2ee');

/*Table structure for table `supplier` */

DROP TABLE IF EXISTS `supplier`;

CREATE TABLE `supplier` (
  `SUPPID` int(11) NOT NULL,
  `NAME` varchar(80) DEFAULT NULL,
  `STATUS` varchar(2) NOT NULL,
  `ADDR1` varchar(80) DEFAULT NULL,
  `ADDR2` varchar(80) DEFAULT NULL,
  `CITY` varchar(80) DEFAULT NULL,
  `STATE` varchar(80) DEFAULT NULL,
  `ZIP` varchar(5) DEFAULT NULL,
  `PHONE` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SUPPID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `supplier` */

insert  into `supplier`(`SUPPID`,`NAME`,`STATUS`,`ADDR1`,`ADDR2`,`CITY`,`STATE`,`ZIP`,`PHONE`) values (1,'XYZ Pets','AC','600 Avon Way','','Los Angeles','CA','94024','212-947-0797'),(2,'ABC Pets','AC','700 Abalone Way','','San Francisco ','CA','94024','415-947-0797');

/*Table structure for table `teacher` */

DROP TABLE IF EXISTS `teacher`;

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namevar` varchar(10) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `research_area` varchar(20) NOT NULL,
  `title` varchar(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `teacher` */

insert  into `teacher`(`id`,`namevar`,`gender`,`research_area`,`title`) values (1,'张伟','男','软件工程师','讲师');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userId` bigint(20) NOT NULL AUTO_INCREMENT,
  `userName` varchar(30) NOT NULL,
  `password` varchar(80) NOT NULL,
  `comment` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `UQ_User_userName` (`userName`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`userId`,`userName`,`password`,`comment`) values (1,'zhanghp','1','zhanghp');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
