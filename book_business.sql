DROP DATABASE IF EXISTS `BookPublishing`;
CREATE DATABASE IF NOT EXISTS `BookPublishing`; 
USE `BookPublishing`;

SET NAMES UTF8MB4;
SET character_set_client = UTF8MB4;

DROP TABLE IF EXISTS `Genres`;
CREATE TABLE `Genres` (
	`GenreID` int NOT NULL,
    `Name` varchar (30) NOT NULL,
    PRIMARY KEY (`GenreID`)
    ) ENGINE = InnoDB DEFAULT CHARSET = UTF8MB4 COLLATE = utf8mb4_0900_ai_ci;
    
DROP TABLE IF EXISTS `Books`;
CREATE TABLE `Books` (
  `BookID` mediumint unsigned NOT NULL auto_increment,
  `Name` TEXT default NULL,
  `Price` varchar(100) default NULL,
  `PublisherID` mediumint default NULL,
  `GenreID` int NULL,
  PRIMARY KEY (`BookID`)
) AUTO_INCREMENT=1;

DROP TABLE IF EXISTS `BookEditors`;
CREATE TABLE `BookEditors` (
`BookEditorID` mediumint unsigned NOT NULL auto_increment,
`EditorID` int NOT NULL,
`BookID` int NOT NULL,
PRIMARY KEY (`BookEditorID`)
)AUTO_INCREMENT = 1;

DROP TABLE IF EXISTS `Authors`;
CREATE TABLE `Authors` (
  `AuthorID` mediumint unsigned NOT NULL auto_increment,
  `Name` varchar(255) default NULL,
  `Phone` varchar(100) default NULL,
  `Email` varchar(255) default NULL,
  PRIMARY KEY (`AuthorID`)
) AUTO_INCREMENT=1;


DROP TABLE IF EXISTS `Orders`;
CREATE TABLE `Orders` (
  `OrderID` mediumint unsigned NOT NULL auto_increment,
  `CustomerID` mediumint default NULL,
  `Price` varchar(100) default NULL,
  `OrderDate` varchar(255),
  `ShippedDate` varchar(255),
  PRIMARY KEY (`OrderID`)
) AUTO_INCREMENT=1;


  
DROP TABLE IF EXISTS `Publishers`;
CREATE TABLE `Publishers` (
  `PublisherID` mediumint unsigned NOT NULL auto_increment,
  `Name` varchar(40) NOT NULL,
  `Address` varchar(100) default NULL,
  `City` varchar(20) default NULL,
  `State` varchar(5) default NULL,
  `PostalZip` varchar(15) default NULL,
  PRIMARY KEY (`PublisherID`)
) AUTO_INCREMENT=1;


DROP TABLE IF EXISTS `Editors`;
CREATE TABLE `Editors` (
  `EditorID` mediumint unsigned NOT NULL auto_increment,
  `Name` varchar(255) default NULL,
  PRIMARY KEY (`EditorID`)
) AUTO_INCREMENT=1;

    
DROP TABLE IF EXISTS `BookAuthors`;
CREATE TABLE `BookAuthors` (
`BookAuthorID` mediumint unsigned NOT NULL auto_increment,
`BookID` int NOT NULL,
`AuthorID` int NOT NULL,
`Royalty` int NULL,
PRIMARY KEY (`BookAuthorID`)
)AUTO_INCREMENT = 1;
 

DROP TABLE IF EXISTS `OrderDetails`;
CREATE TABLE `OrderDetails`(
`OrderDetailsID` mediumint unsigned NOT NULL auto_increment,
`OrderID` int NOT NULL,
`BookID` int NOT NULL,
PRIMARY KEY (`OrderDetailsID`)
)AUTO_INCREMENT = 1;

