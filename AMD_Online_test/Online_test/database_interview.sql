/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.18-log : Database - codewarrior
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`codewarrior` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `codewarrior`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `ID` int(3) NOT NULL AUTO_INCREMENT,
  `EMAIL` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

insert  into `admin`(`ID`,`EMAIL`,`PASSWORD`) values (1,'admin@amdtirana.al','amdtirana');

/*Table structure for table `choice` */

DROP TABLE IF EXISTS `choice`;

CREATE TABLE `choice` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `TEXT` varchar(1000) DEFAULT NULL,
  `Q_ID` int(5) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=309 DEFAULT CHARSET=utf8;

/*Data for the table `choice` */

insert  into `choice`(`ID`,`TEXT`,`Q_ID`) values (73,'System programming language',8),(74,'General purpose language',8),(75,'Data processing language',8),(76,'None of the above',8),(77,'absiha',9),(78,'asiha',9),(79,'haasi',9),(80,'hai',9),(81,'0289',10),(82,'1289',10),(83,'713',10),(84,'Syntax error',10),(85,'Both can occur multiple times, but a declaration must occur first',11),(86,'A definition occurs once, but a declaration may occur many times',11),(87,'Both can occur multiple times, but a definition must occur first',11),(88,'A declaration occurs once, but a definition may occur many times',11),(89,'7',12),(90,'12',12),(91,'24',12),(92,'It will not compile because not enough initializers are given',12),(93,'135',13),(94,'+INF',13),(95,'-121',13),(96,'-8',13),(97,'Infinite Times',14),(98,'11',14),(99,'0',14),(100,'10',14),(101,'Float',15),(102,'Integer',15),(103,'Character',15),(104,'Enum',15),(105,'Mukesh Ambani',16),(106,'Lakashmi Mittal',16),(107,'It will print nothing',16),(108,'Mukesh Ambani Lakashmi Mittal',16),(109,'5 10',17),(110,'6 11',17),(111,'6 10',17),(112,'John Terry',17),(113,'garbage value garbage value garbage value',18),(114,'5 6 11',18),(115,'11 6 5',18),(116,'Compiler error',18),(117,'Stack underflow',19),(118,'Stack Overflow',19),(119,'None of these',19),(120,'Both A and B',19),(125,'CQESTIONBANK',21),(126,'CQUESTION',21),(127,'BANK',21),(128,'None of the above',21),(129,'Constructs new data type',22),(130,'Enables the initialization of an object as it is created',22),(131,'Obtain memory for a new variable',22),(132,'None of the above',22),(133,'104',23),(134,'114',23),(135,'140',23),(136,'14',23),(141,'104',25),(142,'114',25),(143,'140',25),(144,'14',25),(145,'13CQUESTIONBANK',26),(146,'CQUESTIONBANK13',26),(147,'Garbage CQUESTIONBANK',26),(148,'Compiler error',26),(149,'13CQUESTIONBANK',27),(150,'CQUESTIONBANK13',27),(151,'Garbage CQUESTIONBANK',27),(152,'Compiler error',27),(153,'Variable b is of integer type and will always have value 2',28),(154,'Variable a and b are of int type and the initial value of both variables is 2',28),(155,'Variable b is international scope and will have value 2',28),(156,'Variable b will have value 2 if not specified when calling function',28),(157,'stdio.h',29),(158,'stdio.h & math.h',29),(159,'stdio.h & stddef.h',29),(160,'None of the above',29),(161,'printf(\"\\n%c\", ((int *)p+4));',30),(162,'printf(\"\\n%d\",(*(int *)p+4));',30),(163,'printf(\"\\n%d\",*((int *)p+4));',30),(164,'None of the above',30),(165,'0',31),(166,'Garbage Value',31),(167,'Compilation Error',31),(168,'None of the above',31),(169,'::',32),(170,'+',32),(171,'-',32),(172,'[]',32),(173,'catch(..,)',33),(174,'catch(---)',33),(175,'catch(...)',33),(176,'catch(void x)',33),(177,'The compiler will generate error',34),(178,'Error will occur at run-time',34),(179,'Compiler provides its default constructor to build the object',34),(180,'None of these',34),(181,'Only 2, 3, 5',35),(182,'Only 2, 3, 4',35),(183,'Only 2, 4, 5',35),(184,'Only 3, 4, 5',35),(185,'Virtual Base class',36),(186,'Container class',36),(187,'Virtual function',36),(188,'Both a and c',36),(189,'Overloading',37),(190,'Overriding',37),(191,'Rewriting',37),(192,'All of these',37),(193,'Virtual class',38),(194,'Sealed class',38),(195,'Pure Local class',38),(196,'Abstract Class',38),(197,'1',39),(198,'as many as you like',39),(199,'0',39),(200,'2',39),(201,'try',40),(202,'allow',40),(203,'catch',40),(204,'throw',40),(205,'int',41),(206,'double',41),(207,'string',41),(208,'float',41),(209,'It is called as forward declaration',42),(210,'It is called as backward declaration',42),(211,'It is called as middle declaration',42),(212,'It is called as simple declaration',42),(213,'?::',43),(214,'&*',43),(215,'->>',43),(216,'->*',43),(217,'2',44),(218,'0',44),(219,'1',44),(220,'infinite',44),(221,'Option 1,2 and 4',45),(222,'Option 2 and 3',45),(223,'Option 1 and 3',45),(224,'Option 1,3 and 4',45),(225,'exp1',46),(226,'exp3',46),(227,'exp1 and exp3',46),(228,'exp1, exp2 and exp3',46),(229,'127',47),(230,'128',47),(231,'256',47),(232,'Infinitely',47),(233,'The code will print 5',48),(234,'The code will print 6',48),(235,'The code will result in L  value required',48),(236,'The code will result in R  value required',48),(237,'The program will print the output 1 3 0',49),(238,'The program will print the output 0 1 3',49),(239,'The program will results in expression syntax error',49),(240,'The program will print the output 0 3 1',49),(241,'cmp is a pointer to an void type',50),(242,'cmp is a void type pointer variable',50),(243,'cmp is a function that return a void pointer',50),(244,'cmp function returns nothing',50),(245,'cmp is a pointer to an void type',51),(246,'cmp is a void type pointer variable',51),(247,'cmp is a function that return a void pointer',51),(248,'cmp function returns nothing',51),(249,'cmp is a pointer to an void type',52),(250,'cmp is a void type pointer variable',52),(251,'cmp is a function that return a void pointer',52),(252,'cmp function returns nothing',52),(253,'exp1',53),(254,'exp3',53),(255,'exp1 and exp3',53),(256,'exp1, exp2 and exp3',53),(265,'int',56),(266,'double',56),(267,'string',56),(268,'float',56),(269,'Stack underflow',57),(270,'Stack Overflow',57),(271,'None of these',57),(272,'Both A and B',57),(273,'Infinite Times',58),(274,'11',58),(275,'0',58),(276,'10',58),(277,'fasdfasdf',59),(278,'asdfas',59),(279,'fdasdfas',59),(280,'fdasdfasdf',59),(281,'asdfasdf',60),(282,'asdfasdf',60),(283,'asdfasdf',60),(284,'asdfasdfasd',60),(285,'asdfasdf',61),(286,'asdfasdf',61),(287,'asdfasfd',61),(288,'asdfsafdasdasdfdsa',61),(289,'asdfasdfas',62),(290,'dfasdfasfd',62),(291,'asfdasfdas',62),(292,'fdsafdasdfasdfasf',62),(293,'Hello',63),(294,'Hell2H',63),(295,'Hell2',63),(296,'Kiosod2',63),(297,'1A',64),(298,'2A',64),(299,'3A',64),(300,'4A',64),(301,'QA',65),(302,'asdasd',65),(303,'asdas',65),(304,'asdas',65),(305,'aasdasd',66),(306,'asdasd',66),(307,'asdasd',66),(308,'asddas',66);

/*Table structure for table `question` */

DROP TABLE IF EXISTS `question`;

CREATE TABLE `question` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `TEXT` varchar(1000) DEFAULT NULL,
  `Q_SET` int(2) DEFAULT NULL,
  `ANSWER` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

/*Data for the table `question` */

insert  into `question`(`ID`,`TEXT`,`Q_SET`,`ANSWER`) values (8,'C&nbsp;was&nbsp;primarily&nbsp;developed&nbsp;as',1,'A'),(9,'What&nbsp;will&nbsp;be&nbsp;printed&nbsp;after&nbsp;execution&nbsp;of&nbsp;the&nbsp;following&nbsp;program&nbsp;code?\r<br>\r<br>main()\r<br>{\r<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;printf(\"\\nab\");&nbsp;\r<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;printf(\"\\bsi\");&nbsp;\r<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;printf(\"\\rha\");&nbsp;\r<br>}',1,'D'),(10,'Find&nbsp;the&nbsp;output&nbsp;of&nbsp;the&nbsp;following&nbsp;program\r<br>\r<br>void&nbsp;main()\r<br>{\r<br>	int&nbsp;i=01289;\r<br>	printf(\"%d\",i);\r<br>}',1,'D'),(11,'What&nbsp;is&nbsp;the&nbsp;difference&nbsp;between&nbsp;a&nbsp;declaration&nbsp;and&nbsp;a&nbsp;definition&nbsp;of&nbsp;a&nbsp;variable?',1,'D'),(12,'short&nbsp;testarray[4][3]&nbsp;=&nbsp;{&nbsp;{1},&nbsp;{2,3},&nbsp;{4,5,6}};\r<br>printf(\"%d\",&nbsp;sizeof(testarray));\r<br>\r<br>Assuming&nbsp;a&nbsp;short&nbsp;is&nbsp;two&nbsp;bytes&nbsp;long,&nbsp;what&nbsp;will&nbsp;be&nbsp;printed&nbsp;by&nbsp;the&nbsp;above&nbsp;code?',1,'C'),(13,'What&nbsp;will&nbsp;be&nbsp;output&nbsp;if&nbsp;you&nbsp;will&nbsp;compile&nbsp;and&nbsp;execute&nbsp;the&nbsp;following&nbsp;c&nbsp;code?\r<br>\r<br>void&nbsp;main(){\r<br>&nbsp;&nbsp;&nbsp;&nbsp;char&nbsp;c=125;\r<br>&nbsp;&nbsp;&nbsp;&nbsp;c=c+10;\r<br>&nbsp;&nbsp;&nbsp;&nbsp;printf(\"%d\",c);&nbsp;\r<br>}',1,'C'),(14,'How&nbsp;many&nbsp;times&nbsp;the&nbsp;string&nbsp;is&nbsp;printed?\r<br>\r<br>int&nbsp;main()\r<br>{\r<br>&nbsp;&nbsp;&nbsp;&nbsp;int&nbsp;x;\r<br>&nbsp;&nbsp;&nbsp;&nbsp;for(x=-1;&nbsp;x<=10;&nbsp;x++)\r<br>&nbsp;&nbsp;&nbsp;&nbsp;{\r<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(x&nbsp;<&nbsp;5)\r<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;continue;\r<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else\r<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break;\r<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;printf(\"Welcome\\n\");\r<br>&nbsp;&nbsp;&nbsp;&nbsp;}\r<br>&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;0;\r<br>}',2,'C'),(15,'Which&nbsp;of&nbsp;the&nbsp;following&nbsp;cannot&nbsp;be&nbsp;checked&nbsp;in&nbsp;a&nbsp;switch-case&nbsp;statement?',2,'A'),(16,'What&nbsp;will&nbsp;be&nbsp;output&nbsp;when&nbsp;you&nbsp;will&nbsp;execute&nbsp;following&nbsp;c&nbsp;code?\r<br>\r<br>void&nbsp;main(){\r<br>&nbsp;&nbsp;&nbsp;&nbsp;if(!printf(\"Mukesh&nbsp;Ambani\"))\r<br>&nbsp;&nbsp;&nbsp;&nbsp;if(printf(\"&nbsp;Lakashmi&nbsp;Mittal\"));\r<br>}',3,'A'),(17,'What&nbsp;will&nbsp;be&nbsp;output&nbsp;when&nbsp;you&nbsp;will&nbsp;execute&nbsp;following&nbsp;c&nbsp;code?\r<br>\r<br>void&nbsp;main(){\r<br>&nbsp;&nbsp;&nbsp;&nbsp;int&nbsp;a=5,b=10;\r<br>&nbsp;&nbsp;&nbsp;&nbsp;if(++a||++b)\r<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;printf(\"%d&nbsp;%d\",a,b);\r<br>&nbsp;&nbsp;&nbsp;&nbsp;else\r<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;printf(\"John&nbsp;Terry\");\r<br>}',2,'C'),(18,'void&nbsp;main()\r<br>{\r<br>&nbsp;int&nbsp;a=5,b=6,c=11;\r<br>&nbsp;printf(\"%d&nbsp;%d&nbsp;%d\");\r<br>}\r<br>\r<br>What&nbsp;will&nbsp;output&nbsp;when&nbsp;you&nbsp;compile&nbsp;and&nbsp;run&nbsp;the&nbsp;above&nbsp;code?',3,'A'),(19,'Whats&nbsp;happen&nbsp;if&nbsp;base&nbsp;condition&nbsp;is&nbsp;not&nbsp;defined&nbsp;in&nbsp;recursion&nbsp;?',3,'B'),(21,'void&nbsp;main()\r<br>{\r<br>&nbsp;char&nbsp;*str=\"CQUESTIONBANK\";\r<br>&nbsp;printf(str+9);\r<br>}\r<br>\r<br>What&nbsp;will&nbsp;output&nbsp;when&nbsp;you&nbsp;compile&nbsp;and&nbsp;run&nbsp;the&nbsp;above&nbsp;code?',3,'C'),(22,'A&nbsp;constructor',3,'B'),(23,'Consider&nbsp;the&nbsp;statements&nbsp;a&nbsp;=&nbsp;13&nbsp;;&nbsp;c&nbsp;=&nbsp;a<<&nbsp;3&nbsp;;&nbsp;(a&nbsp;and&nbsp;c&nbsp;are&nbsp;integers).&nbsp;The&nbsp;result&nbsp;assigned&nbsp;to&nbsp;the&nbsp;integer&nbsp;c&nbsp;is',3,'A'),(25,'Consider&nbsp;the&nbsp;statements&nbsp;a&nbsp;=&nbsp;13&nbsp;;&nbsp;c&nbsp;=&nbsp;a<<&nbsp;3&nbsp;;&nbsp;(a&nbsp;and&nbsp;c&nbsp;are&nbsp;integers).&nbsp;The&nbsp;result&nbsp;assigned&nbsp;to&nbsp;the&nbsp;integer&nbsp;c&nbsp;is',2,'A'),(26,'void&nbsp;main()&nbsp;\r<br>{&nbsp;\r<br>&nbsp;printf(\"%d\",printf(\"CQUESTIONBANK\"));&nbsp;\r<br>}&nbsp;\r<br>\r<br>What&nbsp;will&nbsp;output&nbsp;when&nbsp;you&nbsp;compile&nbsp;and&nbsp;run&nbsp;the&nbsp;above&nbsp;code?',2,'B'),(27,'void&nbsp;main()&nbsp;\r<br>{&nbsp;\r<br>&nbsp;printf(\"%d\",printf(\"CQUESTIONBANK\"));&nbsp;\r<br>}&nbsp;\r<br>\r<br>What&nbsp;will&nbsp;output&nbsp;when&nbsp;you&nbsp;compile&nbsp;and&nbsp;run&nbsp;the&nbsp;above&nbsp;code?',3,'B'),(28,'Observe&nbsp;following&nbsp;function&nbsp;declaration&nbsp;and&nbsp;choose&nbsp;the&nbsp;best&nbsp;answer:\r<br>\r<br>int&nbsp;divide&nbsp;(&nbsp;int&nbsp;a,&nbsp;int&nbsp;b&nbsp;=&nbsp;2&nbsp;);',2,'D'),(29,'In&nbsp;which&nbsp;header&nbsp;file&nbsp;is&nbsp;the&nbsp;NULL&nbsp;macro&nbsp;defined?',1,'C'),(30,'In&nbsp;the&nbsp;following&nbsp;program&nbsp;how&nbsp;would&nbsp;you&nbsp;print&nbsp;50&nbsp;using&nbsp;p?\r<br>\r<br>main()\r<br>{\r<br>&nbsp;int&nbsp;a[]={10,20,30,40,50};\r<br>&nbsp;char&nbsp;*p;\r<br>&nbsp;p&nbsp;=&nbsp;(char&nbsp;*)a;\r<br>}',2,'C'),(31,'What&nbsp;is&nbsp;the&nbsp;output&nbsp;of&nbsp;the&nbsp;following&nbsp;code?\r<br>\r<br>int&nbsp;main(){\r<br>	static&nbsp;int&nbsp;a;\r<br>	printf(\"%d\",&nbsp;a);\r<br>	return&nbsp;0;\r<br>}',3,'A'),(32,'Which&nbsp;of&nbsp;the&nbsp;following&nbsp;operators&nbsp;cant&nbsp;be&nbsp;overloaded?',1,'A'),(33,'Generic&nbsp;catch&nbsp;handler&nbsp;is&nbsp;represented&nbsp;by',1,'C'),(34,'If&nbsp;default&nbsp;constructor&nbsp;is&nbsp;not&nbsp;defined,&nbsp;then&nbsp;how&nbsp;the&nbsp;objects&nbsp;of&nbsp;the&nbsp;class&nbsp;will&nbsp;be&nbsp;created?',2,'C'),(35,'Which&nbsp;of&nbsp;the&nbsp;following&nbsp;statements&nbsp;are&nbsp;not&nbsp;true&nbsp;about&nbsp;destructor?\r<br>\r<br>1.&nbsp;It&nbsp;is&nbsp;invoked&nbsp;when&nbsp;object&nbsp;goes&nbsp;out&nbsp;of&nbsp;the&nbsp;scope\r<br>2.&nbsp;Like&nbsp;constructor,&nbsp;it&nbsp;can&nbsp;also&nbsp;have&nbsp;parameters&nbsp;\r<br>3.&nbsp;It&nbsp;can&nbsp;be&nbsp;virtual&nbsp;\r<br>4.&nbsp;It&nbsp;can&nbsp;be&nbsp;declared&nbsp;in&nbsp;private&nbsp;section\r<br>5.&nbsp;It&nbsp;bears&nbsp;same&nbsp;name&nbsp;as&nbsp;that&nbsp;of&nbsp;the&nbsp;class&nbsp;and&nbsp;precedes&nbsp;Lambda&nbsp;sign',1,'C'),(36,'Runtime&nbsp;polymorphism&nbsp;can&nbsp;be&nbsp;achieved&nbsp;with',1,'C'),(37,'When&nbsp;a&nbsp;virtual&nbsp;function&nbsp;is&nbsp;redefined&nbsp;by&nbsp;the&nbsp;derived&nbsp;class,&nbsp;it&nbsp;is&nbsp;called',2,'B'),(38,'If&nbsp;a&nbsp;class&nbsp;contains&nbsp;pure&nbsp;virtual&nbsp;function,&nbsp;then&nbsp;it&nbsp;is&nbsp;termed&nbsp;as',3,'D'),(39,'In&nbsp;C++&nbsp;how&nbsp;many&nbsp;return&nbsp;statements&nbsp;are&nbsp;allowed&nbsp;in&nbsp;a&nbsp;non-void&nbsp;function?',1,'B'),(40,'Which&nbsp;of&nbsp;the&nbsp;following&nbsp;keyword&nbsp;is&nbsp;not&nbsp;used&nbsp;in&nbsp;exception&nbsp;handling',2,'B'),(41,'The&nbsp;pow&nbsp;functions&nbsp;returns',2,'B'),(42,'In&nbsp;the&nbsp;following&nbsp;statements,\r<br>\r<br>class&nbsp;ABC;\r<br>class&nbsp;ABC\r<br>{\r<br>};',3,'A'),(43,'Following&nbsp;is&nbsp;the&nbsp;dereferencing&nbsp;operator',1,'D'),(44,'Destructor&nbsp;can&nbsp;have&nbsp;following&nbsp;number&nbsp;of&nbsp;argument',2,'B'),(45,'struct\r<br>{\r<br>&nbsp;int&nbsp;x;\r<br>&nbsp;int&nbsp;y;\r<br>}abc;\r<br>\r<br>You&nbsp;cannot&nbsp;access&nbsp;x&nbsp;by&nbsp;the&nbsp;following.\r<br>\r<br>1.&nbsp;abc&nbsp;->&nbsp;x\r<br>2.&nbsp;abc[0]&nbsp;->x\r<br>3.&nbsp;abc.x\r<br>4.&nbsp;(abc)&nbsp;->x',3,'A'),(46,'In&nbsp;the&nbsp;following&nbsp;loop&nbsp;construct,&nbsp;which&nbsp;one&nbsp;is&nbsp;executed&nbsp;only&nbsp;once&nbsp;always.\r<br>\r<br>for&nbsp;(&nbsp;exp1;&nbsp;exp2;&nbsp;exp3)&nbsp;{.&nbsp;.&nbsp;.}',3,'A'),(47,'unsigned&nbsp;char&nbsp;c;\r<br>for(&nbsp;c&nbsp;=&nbsp;0;&nbsp;c&nbsp;!=&nbsp;256;&nbsp;c+2&nbsp;)\r<br>printf(\"%d\",&nbsp;c);\r<br>\r<br>Who&nbsp;many&nbsp;times&nbsp;the&nbsp;loop&nbsp;executes?',1,'D'),(48,'Which&nbsp;of&nbsp;the&nbsp;following&nbsp;statement&nbsp;is&nbsp;correct&nbsp;about&nbsp;the&nbsp;code&nbsp;snippet&nbsp;given&nbsp;below?\r<br>\r<br>int&nbsp;main(){\r<br>	int&nbsp;num&nbsp;=&nbsp;5;\r<br>	printf(\"%d\",&nbsp;++num++&nbsp;);\r<br>\r<br>	return&nbsp;0;\r<br>}',2,'C'),(49,'Which&nbsp;of&nbsp;the&nbsp;following&nbsp;statement&nbsp;is&nbsp;correct&nbsp;about&nbsp;the&nbsp;code&nbsp;snippet&nbsp;given&nbsp;below?\r<br>\r<br>int&nbsp;main(){\r<br>	int&nbsp;a&nbsp;=&nbsp;10,&nbsp;b&nbsp;=&nbsp;2,&nbsp;c;\r<br>	a&nbsp;=&nbsp;!(&nbsp;c&nbsp;=&nbsp;c&nbsp;==&nbsp;c)&nbsp;&&&nbsp;++b;\r<br>	c&nbsp;+=&nbsp;(a&nbsp;+&nbsp;b--);\r<br>	printf(\"%d&nbsp;%d&nbsp;%d\",&nbsp;b,&nbsp;c,&nbsp;a);\r<br>	return&nbsp;0;\r<br>}',3,'A'),(50,'What&nbsp;do&nbsp;the&nbsp;following&nbsp;declaration&nbsp;signify?\r<br>\r<br>void&nbsp;*cmp();',1,'C'),(51,'What&nbsp;do&nbsp;the&nbsp;following&nbsp;declaration&nbsp;signify?\r<br>\r<br>void&nbsp;*cmp();',2,'C'),(52,'What&nbsp;do&nbsp;the&nbsp;following&nbsp;declaration&nbsp;signify?\r<br>\r<br>void&nbsp;*cmp();',3,'C'),(53,'In&nbsp;the&nbsp;following&nbsp;loop&nbsp;construct,&nbsp;which&nbsp;one&nbsp;is&nbsp;executed&nbsp;only&nbsp;once&nbsp;always.&nbsp;\r<br>\r<br>for&nbsp;(&nbsp;exp1;&nbsp;exp2;&nbsp;exp3)&nbsp;{.&nbsp;.&nbsp;.}',2,'A'),(56,'The&nbsp;pow&nbsp;functions&nbsp;returns',3,'B'),(57,'Whats&nbsp;happen&nbsp;if&nbsp;base&nbsp;condition&nbsp;is&nbsp;not&nbsp;defined&nbsp;in&nbsp;recursion&nbsp;?',2,'B'),(58,'How&nbsp;many&nbsp;times&nbsp;the&nbsp;string&nbsp;is&nbsp;printed?&nbsp;\r<br>\r<br>int&nbsp;main()&nbsp;\r<br>{&nbsp;\r<br>&nbsp;&nbsp;&nbsp;&nbsp;int&nbsp;x;&nbsp;\r<br>&nbsp;&nbsp;&nbsp;&nbsp;for(x=-1;&nbsp;x<=10;&nbsp;x++)&nbsp;\r<br>&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;\r<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(x&nbsp;<&nbsp;5)&nbsp;\r<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;continue;&nbsp;\r<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else&nbsp;\r<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break;&nbsp;\r<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;printf(\"Welcome\\n\");&nbsp;\r<br>&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;\r<br>&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;0;&nbsp;\r<br>}',3,'C'),(62,'asdfasfdasfd',2,'B,D'),(63,'Testing&nbsp;ADD&nbsp;Question',1,'C,D'),(64,'Hello1',4,'A'),(65,'Hello2',4,'A'),(66,'Helslas-d',4,'A,B');

/*Table structure for table `result` */

DROP TABLE IF EXISTS `result`;

CREATE TABLE `result` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `ANSWER` varchar(10) DEFAULT NULL,
  `Q_ID` int(5) DEFAULT NULL,
  `U_ID` int(5) DEFAULT NULL,
  `RETRIES` int(3) NOT NULL DEFAULT '1',
  `ADMIN_ID` int(3) DEFAULT '-1',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

/*Data for the table `result` */

insert  into `result`(`ID`,`ANSWER`,`Q_ID`,`U_ID`,`RETRIES`,`ADMIN_ID`) values (1,'A',8,140,1,1),(2,'C',33,140,1,1),(3,'A',12,140,1,1),(4,'A,B',35,140,1,1),(5,'D',29,140,1,1),(6,'A',43,140,1,1),(7,'A',47,140,1,1),(8,'A',10,140,1,1),(9,'A',43,140,1,1),(10,'A',50,140,1,1),(11,'C',63,140,1,1),(12,'C',8,140,1,1),(13,'A',9,140,1,1),(14,'B',10,140,1,1),(15,'C',11,140,1,1),(16,'A',12,140,1,1),(17,'A',13,140,1,1),(18,'D',29,140,1,1),(19,'C',32,140,1,1),(20,'B',33,140,1,1),(21,'A',35,140,1,1),(22,'C',36,140,1,1),(23,'C',39,140,1,1),(24,'C',43,140,1,1),(25,'B',47,140,1,1),(26,'D',50,140,1,1),(27,'D',8,140,1,1),(28,'B',9,140,1,1),(29,'D',10,140,1,1),(30,'A',12,141,1,-1),(31,'A',16,140,2,1),(32,'D',18,140,2,1),(33,'D',19,140,2,1),(34,'B',21,140,2,1),(35,'D',22,140,2,1),(36,'D',23,140,2,1),(37,'B',27,140,2,1),(38,'C',31,140,2,1),(39,'A',10,140,2,1),(40,'D',11,140,2,1),(41,'A',64,143,2,1),(42,'A',65,143,2,1),(43,'A',64,143,2,1),(44,'D',65,143,2,1),(45,'A,B',66,143,2,1),(46,'D',64,143,2,1),(47,'D',65,143,2,1),(48,'D',66,143,2,1),(49,'D',64,143,2,1),(50,'D',65,143,2,1),(51,'D',66,143,2,1),(52,'D',64,143,2,1),(53,'D',66,143,2,1),(54,'D',64,143,2,1),(55,'D',65,143,2,1),(56,'D',66,143,2,1),(57,'D',65,143,2,1),(58,'D',66,143,2,1),(59,'D',64,143,2,1),(60,'D',64,143,2,1),(61,'D',65,143,2,1),(62,'D',64,143,2,1),(63,'D',65,143,2,1),(64,'D',66,143,2,1),(65,'A',64,143,2,1),(66,'A',64,144,1,1),(67,'A',65,144,1,1),(68,'A,B',66,144,1,1),(69,'A',64,144,1,1),(70,'A',65,144,1,1),(71,'A,B',66,144,1,1),(72,'D',64,144,1,1),(73,'C,D',65,144,1,1),(74,'C,D',66,144,1,1),(75,'C,D',64,144,1,1),(76,'C,D',65,144,1,1),(77,'D',66,144,1,1),(78,'D',64,144,1,1),(79,'C,D',66,144,1,1),(80,'C,D',64,144,1,1),(81,'B,D',65,144,1,1),(82,'D',66,144,1,1),(83,'A,C',64,144,1,1),(84,'D',65,144,1,1),(85,'D',66,144,1,1),(86,'C,D',64,144,1,1),(87,'C,D',66,144,1,1),(88,'C',64,144,1,1),(89,'D',65,144,1,1),(90,'C',66,144,1,1),(91,'D',64,144,1,1),(92,'A',64,144,2,1),(93,'D',65,144,2,1),(94,'D',66,144,2,1),(95,'D',64,144,2,1),(96,'D',65,144,2,1),(97,'D',66,144,2,1),(98,'D',64,144,2,1),(99,'D',65,144,2,1);

/*Table structure for table `section` */

DROP TABLE IF EXISTS `section`;

CREATE TABLE `section` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SECTION` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `section` */

insert  into `section`(`ID`,`SECTION`) values (1,'JAVA'),(3,'adsasdfasfdasfdsa'),(4,'Testing');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `RETRIES` int(3) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`ID`,`NAME`,`EMAIL`,`PASSWORD`,`RETRIES`) values (140,'Anastas Pandili','anastaspandili@unyt.edu.al',NULL,2),(141,'Anesti Pandili','anesti.pandili@yahoo.com',NULL,1),(142,'Anastas Kodnili','anastaspandili@unyt.edu.al',NULL,2),(143,'Anesti Pandisdasd','admin@amdtirana.al',NULL,2),(144,'Jofne Ass','jofnassa@yahoo.com',NULL,2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
