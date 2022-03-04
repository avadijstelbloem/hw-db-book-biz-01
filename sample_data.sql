-- Sample Data
USE BookPublishing;

INSERT INTO `Genres` VALUES(1,'Textbooks');
INSERT INTO `Genres` VALUES(2,'Mystery');
INSERT INTO `Genres` VALUES(3,'Fantasy');
INSERT INTO `Genres` VALUES(4,'Historical Fiction');
INSERT INTO `Genres` VALUES(5,'Romance');
INSERT INTO `Genres` VALUES(6,'Science Fiction');
INSERT INTO `Genres` VALUES(7,'Thrillers');
INSERT INTO `Genres` VALUES(8,'Biographies/Autobiographies');
INSERT INTO `Genres` VALUES(9,'Memoirs');
INSERT INTO `Genres` VALUES(10,'Poetry');

INSERT INTO `Books` (`Name`,`Price`,`PublisherID`,`GenreID`)
VALUES
  ("Fun","$5.00",3,1),
  ("Granola","$6.00",3,1),
  ("Flying Cars","$10.00",1,3),
  ("Yesterday Today","$20.00",2,4),
  ("Smile","$13.00",2,10),
  ("Soccer","$5",4,5),
  ("Sun","$5.00",3,2),
  ("Yayyyy","$6.00",2,9),
  ("Bumper","$10.00",1,6),
  ("Today","$20.00",5,4),
  ("Frown","$13.00",4,10),
  ("Football","$5",4,5),
  ("What","$5.00",3,2),
  ("Why","$6.00",2,9),
  ("When","$10.00",1,6),
  ("Where","$20.00",5,4),
  ("Clouds","$13.00",4,10),
  ("Painting","$5",4,5),
  ("nisi","$15.17",2,6),
  ("iaculis","$10.99",4,2),
  ("metus","$3.09",2,2),
  ("mi","$21.39",3,9),
  ("ut","$3.73",1,6),
  ("congue","$11.10",3,10),
  ("metus.","$22.64",2,4),
  ("cubilia","$16.51",2,7),
  ("velit","$18.75",1,3),
  ("ante","$22.10",1,9);
 
 INSERT INTO `Authors` (`Name`,`Phone`,`Email`)
VALUES
  ("Melinda Conner","1-386-612-9266","imperdiet@yahoo.couk"),
  ("Jerry Hurst","(888) 861-6293","dignissim@icloud.couk"),
  ("Jacqueline Stout","(247) 923-6817","lobortis.tellus@outlook.com"),
  ("MacKenzie Duke","1-621-840-1203","quam.elementum@yahoo.ca"),
  ("Priscilla Gallegos","(436) 497-6365","convallis.in@yahoo.ca"),
  ("Rooney Wilson","1-755-219-5612","quam.a@protonmail.ca"),
  ("Ian Caldwell","(542) 771-3648","amet@protonmail.com"),
  ("Maya Alvarado","(874) 176-7152","enim.sit.amet@icloud.org"),
  ("Shaine Byers","1-578-950-5041","vel.vulputate@google.ca"),
  ("Pearl Bailey","1-235-482-0615","nam@protonmail.com"),
  ("Jared Gillespie","(921) 571-1511","odio@hotmail.org"),
  ("Rinah Wooten","1-753-451-9635","nisl.sem.consequat@outlook.edu"),
  ("Basia Dillon","(532) 443-5280","phasellus.ornare.fusce@hotmail.edu"),
  ("Fuller Ayala","(752) 671-4598","blandit@yahoo.org"),
  ("Asher Guerrero","1-238-374-0807","euismod.urna@google.org"),
  ("Hayes Schwartz","1-137-304-8761","ipsum.cursus@google.ca"),
  ("Jaime Chapman","(274) 725-9813","donec.vitae.erat@yahoo.com"),
  ("Todd Berg","1-819-580-8742","mauris@protonmail.org"),
  ("Thane Faulkner","1-625-878-8006","tempor.lorem@aol.edu"),
  ("Lucas Hahn","(223) 658-6651","non.lorem@protonmail.org"),
  ("Quin Yates","(866) 237-8467","non.cursus.non@protonmail.com"),
  ("Anthony Sosa","(143) 826-5130","enim@outlook.org"),
  ("Indigo Gallegos","(964) 724-2389","mauris@protonmail.edu"),
  ("Nash Burch","(335) 577-1454","nec.euismod@aol.org"),
  ("Beverly Harmon","(433) 743-3552","mauris.sit.amet@google.net");
  
  
DROP TABLE IF EXISTS `Customers`;
CREATE TABLE `Customers` (
  `CustomerID` mediumint unsigned NOT NULL auto_increment,
  `Name` varchar(255) default NULL,
  `Phone` varchar(100) default NULL,
  `Email` varchar(255) default NULL,
  `Address` varchar(255) default NULL,
  `PostalZip` varchar(20) default NULL,
  `Region` varchar(50) default NULL,
  `Country` varchar(100) default NULL,
  PRIMARY KEY (`CustomerID`)
) AUTO_INCREMENT=1;

INSERT INTO `Customers` (`Name`,`Phone`,`Email`,`Address`,`PostalZip`,`Region`,`Country`)
VALUES
  ("Cassidy Whitley","(250) 604-2181","eu.enim@google.net","P.O. Box 476, 3246 Ut, Street","81-498","Nariño","Norway"),
  ("Winter Graham","1-843-289-3196","lacinia.at.iaculis@yahoo.net","421-8949 Tristique Road","62417","Innlandet","Sweden"),
  ("Aspen Cook","1-881-575-6067","ullamcorper.duis@icloud.couk","Ap #441-7935 Vivamus Avenue","15-754","Munster","Spain"),
  ("Britanni Sanchez","1-582-761-1552","et.risus@yahoo.couk","Ap #732-4823 Morbi Ave","642607","Kujawsko-pomorskie","Colombia"),
  ("Hasad Villarreal","(894) 290-5647","libero.lacus@hotmail.org","Ap #726-1285 Erat Road","71207","Saskatchewan","China"),
  ("Amela Haney","1-488-825-6469","libero@hotmail.ca","8493 Nulla. St.","QK4 5WD","Friesland","Russian Federation"),
  ("Kiayada Marks","1-543-310-8842","augue@google.edu","1395 Primis St.","H1K 4V8","Arunachal Pradesh","Norway"),
  ("Ashely Mcmahon","1-308-318-7515","erat.nonummy.ultricies@icloud.couk","424-589 Felis St.","8395 MI","İzmir","Turkey"),
  ("Hilary Mcclure","(873) 419-7367","justo.praesent.luctus@yahoo.com","782-1743 Mattis St.","826813","Delhi","Germany"),
  ("Carl Watson","1-283-965-8474","donec@outlook.edu","642-7243 Nunc Street","4208","Jammu and Kashmir","Norway"),
  ("Kristen Schmidt","1-202-478-2245","maecenas.iaculis@hotmail.couk","P.O. Box 492, 9089 Eu St.","21-621","FATA","China"),
  ("Tyler Kirby","(436) 252-8377","sed.dictum@outlook.net","Ap #942-5741 Cursus, St.","83063","Overijssel","Poland"),
  ("September Rios","1-433-452-6550","libero.mauris@google.org","Ap #856-4717 Leo. Avenue","52481-44196","Davao Region","Brazil"),
  ("Liberty Foley","1-501-287-3422","mauris.id@yahoo.ca","4973 Eu Rd.","02767","Stirlingshire","New Zealand"),
  ("Melissa Hubbard","1-728-541-8188","non.lacinia@hotmail.edu","Ap #281-186 Aliquet Avenue","440115","Vestland","Nigeria"),
  ("Leroy Shelton","1-751-665-7060","eu.neque@google.ca","918-494 Pharetra, Road","586816","Arequipa","Netherlands"),
  ("Rose Berry","1-625-914-6577","cubilia.curae.donec@hotmail.com","Ap #818-313 Eu, Street","35153","Opolskie","Italy"),
  ("Samson Flowers","1-737-754-8451","non.lacinia@protonmail.com","P.O. Box 447, 9475 Ante. Av.","15967","Östergötlands län","Sweden"),
  ("Aquila Cantu","(262) 368-7928","nisi.aenean@aol.net","P.O. Box 109, 1589 Diam. Street","443563","Punjab","Mexico"),
  ("Joy Dale","(926) 172-4087","scelerisque.neque@protonmail.com","147-7669 Libero Rd.","83136","Cartago","Australia"),
  ("Fritz Callahan","(917) 654-4067","congue.elit@hotmail.edu","4326 Velit Avenue","68452","Cornwall","India"),
  ("Ali Butler","(435) 975-7235","ipsum@google.couk","731-9457 Integer St.","941336","Hidalgo","Spain"),
  ("Neil Snider","1-340-567-4465","sed.eget.lacus@aol.couk","679-7555 Eu Road","68885","Salzburg","Sweden"),
  ("Ciaran Holland","(486) 527-7775","ante@protonmail.com","Ap #196-3435 Massa. Avenue","7454","Gelderland","Ireland"),
  ("Hillary Frazier","1-827-376-0522","odio@protonmail.org","Ap #642-3185 Euismod Ave","VD1 3MQ","Aisén","Chile");

INSERT INTO `Orders` (`CustomerID`,`Price`,`OrderDate`,`ShippedDate`)
VALUES
  (18,"$28.80","Oct 14, 2020","Oct 16, 2020"),
  (12,"$67.37","Oct 13, 2020","Oct 15, 2020"),
  (18,"$5.32","Jul 20, 2021","Jul 25, 2021"),
  (10,"$98.55","Oct 13, 2020","Oct 20, 2020"),
  (23,"$51.28","Dec 24, 2020","Dec 25, 2020"),
  (8,"$93.42","Jul 29, 2020","Jul 30, 2020"),
  (14,"$2.82","Jul 5, 2021","Jul 8, 2021"),
  (14,"$50.37","Mar 30, 2021","Mar 31, 2021"),
  (9,"$7.31","May 15, 2021","May 17, 2021"),
  (7,"$49.40","Nov 16, 2020","Nov 19, 2020"),
  (2,"$36.54","Dec 5, 2020","Dec 5, 2020"),
  (8,"$77.55","Dec 24, 2020","Dec 26, 2020"),
  (23,"$57.52","Jan 9, 2021","Jan 12, 2021"),
  (15,"$56.52","Jun 22, 2021","Jun 27, 2021"),
  (21,"$94.48","Jul 23, 2020","Jul 25, 2020");
  
INSERT INTO `Publishers` (`Name`,`Address`,`City`,`State`,`PostalZip`)
VALUES
	("Penguin/Random House", "1745 Broadway", "New York", "NY", "10019"),
    ("Hachette Book Group","53 State St","Boston","MA","02109"),
    ("Harper Collins","195 Broadway","New York","NY","10007"),
    ("Macmillan","175 Fifth Avenue","New York","NY","100271"),
	("Simon and Schuster","1230 Avenue of the Americas","New York","NY","10020");
    
INSERT INTO `Editors` (`Name`)
VALUES
  ("Briar Shannon"),
  ("Dacey Curry"),
  ("Linus Bean"),
  ("Madeson Pena"),
  ("Damon Bell");
  
INSERT INTO `BookAuthors` (`BookID`,`AuthorID`, `Royalty`)
 VALUES
	 (1,1,50),
     (2,1,55),
     (3,3,60),
     (4,4,40),
     (4,10,40),
     (5,5,30),
     (6,6,80),
     (7,7,40),
     (8,8,40),
     (9,8,40),
     (9,9,40),
     (10,11,40),
     (11,12,20),
     (12,13,30),
     (13,14,40),
     (14,15,40),
     (15,16,40),
     (16,17,40),
     (17,18,40),
     (17,19,40),
     (18,19,40),
     (19,20,40),
     (20,21,40),
     (21,22,50),
     (22,23,60),
     (23,25,70),
     (24,24,20),
     (25,25,30),
     (26,13,40),
     (27,14,50),
     (27,15,50),
     (28,15,40);
     
     


INSERT INTO `BookEditors` (`EditorID`,`BookID`)
VALUES
	(1, 1),
    (2,1),
    (3,1),
    (3,2),
    (2,2),
    (3,3),
    (4,3),
    (4,4),
    (4,10),
    (5,5),
    (2,5),
    (3,5),
    (5,7),
    (5,8),
    (5,12),
    (5,13),
    (5,16),
    (5,17),
    (5,18),
    (1,19),
    (1,20),
    (1,21),
    (2,22),
    (2,23),
    (3,24),
    (3,25),
    (3,26),
    (4,27),
    (5,28);
    
INSERT INTO `OrderDetails` (`BookID`,`OrderID`)
VALUES
	(1,1),
    (1,10),
    (1,8),
    (2,1),
    (2,2),
    (3,3),
    (4,3),
    (4,4),
    (2,3),
    (5,6),
    (1,7),
    (1,9),
    (5,5),
    (6,1),
    (7,7),
    (8,8),
    (9,9),
    (10,2),
    (11,3),
    (12,11),
    (13,12),
    (14,13),
    (15,14),
    (16,15),
    (18,4),
    (19,10),
    (20,11),
    (21,3);


  
