-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.33-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema studentinfo
--

CREATE DATABASE IF NOT EXISTS studentinfo;
USE studentinfo;

--
-- Definition of table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminid` varchar(50) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY  (`adminid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`adminid`,`password`) VALUES 
 ('1','1234');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


--
-- Definition of table `answer`
--

DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer` (
  `answerid` int(10) unsigned NOT NULL,
  `queryid` varchar(45) NOT NULL,
  `teacherid` varchar(45) NOT NULL,
  `student` varchar(45) NOT NULL,
  `answerdate` varchar(45) NOT NULL,
  `question` varchar(45) NOT NULL,
  `answer` varchar(45) NOT NULL,
  PRIMARY KEY  (`answerid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer`
--

/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;


--
-- Definition of table `branch`
--

DROP TABLE IF EXISTS `branch`;
CREATE TABLE `branch` (
  `branchid` varchar(50) NOT NULL,
  `branchname` varchar(45) NOT NULL,
  PRIMARY KEY  (`branchid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` (`branchid`,`branchname`) VALUES 
 ('100','CS'),
 ('200','IT');
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;


--
-- Definition of table `branchsubmit`
--

DROP TABLE IF EXISTS `branchsubmit`;
CREATE TABLE `branchsubmit` (
  `bn` varchar(50) NOT NULL,
  `sem` varchar(45) NOT NULL,
  `si` varchar(45) NOT NULL,
  `sn` varchar(45) NOT NULL,
  `st` varchar(45) NOT NULL,
  PRIMARY KEY  (`bn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branchsubmit`
--

/*!40000 ALTER TABLE `branchsubmit` DISABLE KEYS */;
INSERT INTO `branchsubmit` (`bn`,`sem`,`si`,`sn`,`st`) VALUES 
 ('100','1','11','Engineering Chemistry','Theory');
/*!40000 ALTER TABLE `branchsubmit` ENABLE KEYS */;


--
-- Definition of table `cities`
--

DROP TABLE IF EXISTS `cities`;
CREATE TABLE `cities` (
  `stateid` varchar(45) NOT NULL,
  `cityid` varchar(45) NOT NULL,
  `cityname` varchar(45) NOT NULL,
  PRIMARY KEY  (`cityid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` (`stateid`,`cityid`,`cityname`) VALUES 
 ('1','1','city1'),
 ('1','2','city2'),
 ('1','3','city3');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;


--
-- Definition of table `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees` (
  `cust` int(10) unsigned NOT NULL auto_increment,
  PRIMARY KEY  (`cust`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;


--
-- Definition of table `graph`
--

DROP TABLE IF EXISTS `graph`;
CREATE TABLE `graph` (
  `gsid` int(10) unsigned NOT NULL auto_increment,
  `gspic` varchar(45) NOT NULL,
  PRIMARY KEY  (`gsid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `graph`
--

/*!40000 ALTER TABLE `graph` DISABLE KEYS */;
INSERT INTO `graph` (`gsid`,`gspic`) VALUES 
 (100,'sfs.jpg');
/*!40000 ALTER TABLE `graph` ENABLE KEYS */;


--
-- Definition of table `mainsemmarks`
--

DROP TABLE IF EXISTS `mainsemmarks`;
CREATE TABLE `mainsemmarks` (
  `StudentID` varchar(50) NOT NULL,
  `s1` varchar(50) NOT NULL,
  `s2` varchar(50) NOT NULL,
  `s3` varchar(45) NOT NULL,
  `s4` varchar(45) NOT NULL,
  `s5` varchar(45) NOT NULL,
  PRIMARY KEY  (`StudentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mainsemmarks`
--

/*!40000 ALTER TABLE `mainsemmarks` DISABLE KEYS */;
INSERT INTO `mainsemmarks` (`StudentID`,`s1`,`s2`,`s3`,`s4`,`s5`) VALUES 
 ('100','2','1','1','3',''),
 ('1001','','','','',''),
 ('10078','','','','',''),
 ('300','','','','','');
/*!40000 ALTER TABLE `mainsemmarks` ENABLE KEYS */;


--
-- Definition of table `midtermmarks`
--

DROP TABLE IF EXISTS `midtermmarks`;
CREATE TABLE `midtermmarks` (
  `StudentID` varchar(45) NOT NULL,
  `s1` varchar(45) NOT NULL,
  `s2` varchar(45) NOT NULL,
  `s3` varchar(45) NOT NULL,
  `s4` varchar(45) NOT NULL,
  `s5` varchar(45) NOT NULL,
  PRIMARY KEY  (`StudentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `midtermmarks`
--

/*!40000 ALTER TABLE `midtermmarks` DISABLE KEYS */;
INSERT INTO `midtermmarks` (`StudentID`,`s1`,`s2`,`s3`,`s4`,`s5`) VALUES 
 ('100','100','12','1212','212','121'),
 ('1001','121','21','212','12','12'),
 ('10078','12','12','12','12','12'),
 ('300','1','21','21','2','12');
/*!40000 ALTER TABLE `midtermmarks` ENABLE KEYS */;


--
-- Definition of table `parents`
--

DROP TABLE IF EXISTS `parents`;
CREATE TABLE `parents` (
  `pid` int(15) unsigned NOT NULL auto_increment,
  `pn` varchar(45) NOT NULL,
  `stdn` varchar(45) NOT NULL,
  `dob` date NOT NULL,
  `pg` varchar(45) NOT NULL,
  `pa` varchar(45) NOT NULL,
  `ps` varchar(45) NOT NULL,
  `pc` varchar(45) NOT NULL,
  `pcon` varchar(45) NOT NULL,
  `pmob` varchar(45) NOT NULL,
  `pemail` varchar(45) NOT NULL,
  `stdadm` varchar(45) NOT NULL,
  `pq` varchar(45) NOT NULL,
  `ppass` varchar(45) NOT NULL,
  `ppic` varchar(45) NOT NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parents`
--

/*!40000 ALTER TABLE `parents` DISABLE KEYS */;
INSERT INTO `parents` (`pid`,`pn`,`stdn`,`dob`,`pg`,`pa`,`ps`,`pc`,`pcon`,`pmob`,`pemail`,`stdadm`,`pq`,`ppass`,`ppic`) VALUES 
 (100,'satend','abc','1995-08-28','Parent','Sathe Ki ','MP','gwalior','9752291869','+919752291869','wwww.sahitya@gmail.com','2015/1/1','sa','1234','abc.jpg'),
 (900,'anjali','golu','1995-02-25','Parent','new road','null','null','9752291869','955556','wwww.sahitya@gmail.com','2015/1/1','wq','1234',''),
 (1234,'sa','sa','1995-08-28','Parent','Sathe Ki','10','Select','9752291869','+919752291869','wwww.sahitya@gmail.com','sa','as','sa',''),
 (21211,'2121','21','0001-01-01','Guardian','121','1','1','121','2121','211','2015/1/1','12121','123','');
/*!40000 ALTER TABLE `parents` ENABLE KEYS */;


--
-- Definition of table `query`
--

DROP TABLE IF EXISTS `query`;
CREATE TABLE `query` (
  `queryid` int(50) unsigned NOT NULL auto_increment,
  `tid` varchar(45) NOT NULL,
  `student` varchar(45) NOT NULL,
  `querydate` varchar(45) NOT NULL,
  `question` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY  (`queryid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `query`
--

/*!40000 ALTER TABLE `query` DISABLE KEYS */;
INSERT INTO `query` (`queryid`,`tid`,`student`,`querydate`,`question`,`status`) VALUES 
 (1,'100','null','2016/5/8','kya hua beta\r\n','Unanswered'),
 (2,'100','null','2016/5/9','bsdhj','Unanswered'),
 (3,'100','null','2016/5/9','how r u \r\n','Unanswered'),
 (4,'100','null','2016/5/12','vjkvk','Unanswered'),
 (5,'100','null','2016/5/13','gtrgtrgt','Unanswered'),
 (6,'100','null','2016/5/27','ygdsyd','Unanswered'),
 (7,'100','null','2016/5/28','jnnjl','Unanswered'),
 (8,'100','null','2016/5/30','hbvfhdf\r\n','Unanswered');
/*!40000 ALTER TABLE `query` ENABLE KEYS */;


--
-- Definition of table `quizmarks`
--

DROP TABLE IF EXISTS `quizmarks`;
CREATE TABLE `quizmarks` (
  `StudentID` varchar(50) NOT NULL,
  `s1` varchar(50) NOT NULL,
  `s2` varchar(45) NOT NULL,
  `s3` varchar(45) NOT NULL,
  `s4` varchar(45) NOT NULL,
  `s5` varchar(45) NOT NULL,
  PRIMARY KEY  (`StudentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quizmarks`
--

/*!40000 ALTER TABLE `quizmarks` DISABLE KEYS */;
INSERT INTO `quizmarks` (`StudentID`,`s1`,`s2`,`s3`,`s4`,`s5`) VALUES 
 ('100','21','212','221','212','121'),
 ('1001','2','2','12','1212','12'),
 ('10078','12','12','12','12','2'),
 ('300','12','1','21','2','12');
/*!40000 ALTER TABLE `quizmarks` ENABLE KEYS */;


--
-- Definition of table `semester`
--

DROP TABLE IF EXISTS `semester`;
CREATE TABLE `semester` (
  `branchid` varchar(50) NOT NULL,
  `semesterid` varchar(45) NOT NULL,
  `semesterno` varchar(45) NOT NULL,
  PRIMARY KEY  USING BTREE (`semesterid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester`
--

/*!40000 ALTER TABLE `semester` DISABLE KEYS */;
INSERT INTO `semester` (`branchid`,`semesterid`,`semesterno`) VALUES 
 ('100','1','1'),
 ('100','2','2'),
 ('100','3','3'),
 ('100','4','4'),
 ('100','5','5'),
 ('100','6','6'),
 ('100','7','7'),
 ('100','8','8');
/*!40000 ALTER TABLE `semester` ENABLE KEYS */;


--
-- Definition of table `states`
--

DROP TABLE IF EXISTS `states`;
CREATE TABLE `states` (
  `stateid` varchar(45) NOT NULL,
  `statename` varchar(45) NOT NULL,
  PRIMARY KEY  (`stateid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` (`stateid`,`statename`) VALUES 
 ('1','Andra Pradesh'),
 ('10','Jammu and Kashmir'),
 ('11','Jharkhand'),
 ('12','Karnataka'),
 ('13','Kerala'),
 ('14','Madya Pradesh'),
 ('15','Maharashtra'),
 ('16','Manipur'),
 ('17','Meghalaya'),
 ('18','Mizoram'),
 ('19','Nagaland'),
 ('2','Arunachal Pradesh'),
 ('20','Orissa'),
 ('21','Punjab'),
 ('22','Rajasthan'),
 ('23','Sikkim'),
 ('24','Tamil Nadu'),
 ('25','Tripura'),
 ('26','Uttaranchal'),
 ('27','Uttar Pradesh'),
 ('28','West Bengal'),
 ('3','Assam'),
 ('4','Bihar'),
 ('5','Chhattisgarh'),
 ('6','Goa'),
 ('7','Gujarat'),
 ('8','Haryana'),
 ('9','Himachal Pradesh');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;


--
-- Definition of table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `student` varchar(45) NOT NULL,
  `ename` varchar(45) NOT NULL,
  `fname` varchar(45) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `fathersnumber` varchar(45) NOT NULL,
  `mobilenumber` varchar(45) NOT NULL,
  `emailid` varchar(45) NOT NULL,
  `year` varchar(45) NOT NULL,
  `branch` varchar(45) NOT NULL,
  `photograph` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY  USING BTREE (`student`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` (`student`,`ename`,`fname`,`dob`,`gender`,`address`,`state`,`city`,`fathersnumber`,`mobilenumber`,`emailid`,`year`,`branch`,`photograph`,`password`) VALUES 
 ('100','w','yogesh','1995-08-28','Male','Sathe Ki Goth, Dana Oli, Lashkar','null','null','India','9752291869','wwww.sahitya@gmail.com','3','CSE','new.jpg','1234'),
 ('1001','Dubey','yogesh dubey','0001-01-01','Male','Sathe Ki Goth, Dana Oli, Lashkar','1','2','India','9752291869','wwww.sahitya@gmail.com','212','CSE','','123'),
 ('10078','NEW','jkj','1995-08-28','Male','Sathe','1','city1','India','9752291869','wwww.sahitya@gmail.com','3','CSE','','123'),
 ('300','Dubey','jkj','0001-01-01','Male','Sathe Ki Got','1','city2','India','9752291869','wwww.sahitya@gmail.com','3','CSE','','132');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;


--
-- Definition of table `subject`
--

DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `branch` varchar(45) NOT NULL,
  `semester` varchar(45) NOT NULL,
  `s1` varchar(45) NOT NULL,
  `s2` varchar(45) NOT NULL,
  `s3` varchar(45) NOT NULL,
  `s4` varchar(45) NOT NULL,
  `s5` varchar(45) NOT NULL,
  PRIMARY KEY  USING BTREE (`branch`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` (`branch`,`semester`,`s1`,`s2`,`s3`,`s4`,`s5`) VALUES 
 ('CSE','6','MicroProcessor','PPL','SE','CN','ACA');
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;


--
-- Definition of table `subjectcode`
--

DROP TABLE IF EXISTS `subjectcode`;
CREATE TABLE `subjectcode` (
  `semesterid` varchar(50) NOT NULL,
  `subjectid` varchar(45) NOT NULL,
  `subjectno` varchar(45) NOT NULL,
  PRIMARY KEY  USING BTREE (`subjectid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjectcode`
--

/*!40000 ALTER TABLE `subjectcode` DISABLE KEYS */;
INSERT INTO `subjectcode` (`semesterid`,`subjectid`,`subjectno`) VALUES 
 ('1','11','BE101[T]'),
 ('1','12','BE102[T]'),
 ('1','14','BE103[T]'),
 ('1','15','BE104[T]'),
 ('1','16','BE105[T]'),
 ('1','17','BE106[P]'),
 ('1','18','BE101[P]'),
 ('1','19','BE103[P]'),
 ('1','20','BE104[P]'),
 ('1','21','BE105[P]');
/*!40000 ALTER TABLE `subjectcode` ENABLE KEYS */;


--
-- Definition of table `subjectname`
--

DROP TABLE IF EXISTS `subjectname`;
CREATE TABLE `subjectname` (
  `subjectid` varchar(45) NOT NULL,
  `subjectnameid` varchar(45) NOT NULL,
  `subjectname` varchar(45) NOT NULL,
  PRIMARY KEY  USING BTREE (`subjectnameid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjectname`
--

/*!40000 ALTER TABLE `subjectname` DISABLE KEYS */;
INSERT INTO `subjectname` (`subjectid`,`subjectnameid`,`subjectname`) VALUES 
 ('11','1000','a'),
 ('12','1001','b');
/*!40000 ALTER TABLE `subjectname` ENABLE KEYS */;


--
-- Definition of table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
CREATE TABLE `teachers` (
  `tid` varchar(45) NOT NULL,
  `tname` varchar(45) NOT NULL,
  `tdob` varchar(45) NOT NULL,
  `tgen` varchar(45) NOT NULL,
  `tadd` varchar(45) NOT NULL,
  `tstate` varchar(45) NOT NULL,
  `tcity` varchar(45) NOT NULL,
  `tcon` varchar(45) NOT NULL,
  `tmbl` varchar(45) NOT NULL,
  `tmail` varchar(45) NOT NULL,
  `tdoj` varchar(45) NOT NULL,
  `tqua` varchar(45) NOT NULL,
  `tdes` varchar(45) NOT NULL,
  `tpass` varchar(45) NOT NULL,
  `tpic` varchar(45) NOT NULL,
  `tbranch` varchar(45) NOT NULL,
  PRIMARY KEY  (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachers`
--

/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` (`tid`,`tname`,`tdob`,`tgen`,`tadd`,`tstate`,`tcity`,`tcon`,`tmbl`,`tmail`,`tdoj`,`tqua`,`tdes`,`tpass`,`tpic`,`tbranch`) VALUES 
 ('100','Sahitya','1/1/1','Male','Sathe Ki Goth','Madhya','Gwalior','31321312','+919752','wwww.sahitya@gmail.com','1/1/1','abc','Assistant','1234','new.jpg','CSE'),
 ('515','jnjkb','bkj','Female','bkjjjk','1','city1','njn','jbbkj','bkj','bkj','jbj','Director','kjbj','','CSE');
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;


--
-- Definition of table `trecord`
--

DROP TABLE IF EXISTS `trecord`;
CREATE TABLE `trecord` (
  `sub` varchar(50) NOT NULL,
  `tid` varchar(45) NOT NULL,
  `bra` varchar(45) NOT NULL,
  `sem` varchar(45) NOT NULL,
  `pic` varchar(45) NOT NULL,
  PRIMARY KEY  (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trecord`
--

/*!40000 ALTER TABLE `trecord` DISABLE KEYS */;
INSERT INTO `trecord` (`sub`,`tid`,`bra`,`sem`,`pic`) VALUES 
 ('Software engineering','100','cse','6',''),
 ('Software engineering','134','cse','6','Papa.jpg');
/*!40000 ALTER TABLE `trecord` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
