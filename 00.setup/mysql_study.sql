-- -----------------------------------------------------------------------------------
-- KTDS
-- -----------------------------------------------------------------------------------
drop database if exists ktds;
create database ktds;
use ktds;


drop table if exists emp;
drop table if exists DEPT;
drop table if exists BONUS;
drop table if exists SALGRADE;

CREATE TABLE DEPT
   (DEPTNO int(2) PRIMARY KEY,
    DNAME VARCHAR(14) ,
    LOC VARCHAR(13) ) ;

CREATE TABLE EMP  
   (EMPNO int(4) PRIMARY KEY,  
    ENAME VARCHAR(10),  
    JOB VARCHAR(9),  
    MGR int(4),  
    HIREDATE DATE,  
    SAL DECIMAL(7,2),  
    COMM DECIMAL(7,2),  
    DEPTNO int(2),
		FOREIGN KEY (DEPTNO) REFERENCES DEPT(deptno) ON DELETE CASCADE);

INSERT INTO DEPT VALUES (10,'ACCOUNTING','NEW YORK');
INSERT INTO DEPT VALUES (20,'RESEARCH','DALLAS');   
INSERT INTO DEPT VALUES (30,'SALES','CHICAGO');  
INSERT INTO DEPT VALUES (40,'OPERATIONS','BOSTON');

INSERT INTO EMP VALUES
(7369,'SMITH','CLERK',7902,str_to_date('17-12-1980','%d-%m-%y %Y%m%d'),800,NULL,20);
INSERT INTO EMP VALUES
(7499,'ALLEN','SALESMAN',7698,str_to_date('20-2-1981','%d-%m-%y %Y%m%d'),1600,300,30);
INSERT INTO EMP VALUES
(7521,'WARD','SALESMAN',7698,str_to_date('22-2-1981','%d-%m-%y %Y%m%d'),1250,500,30);
INSERT INTO EMP VALUES
(7566,'JONES','MANAGER',7839,str_to_date('2-4-1981','%d-%m-%y %Y%m%d'),2975,NULL,20);
INSERT INTO EMP VALUES
(7654,'MARTIN','SALESMAN',7698,str_to_date('28-9-1981','%d-%m-%y %Y%m%d'),1250,1400,30);
INSERT INTO EMP VALUES
(7698,'BLAKE','MANAGER',7839,str_to_date('1-5-1981','%d-%m-%y %Y%m%d'),2850,NULL,30);
INSERT INTO EMP VALUES
(7782,'CLARK','MANAGER',7839,str_to_date('9-6-1981','%d-%m-%y %Y%m%d'),2450,NULL,10);
INSERT INTO EMP VALUES
(7788,'SCOTT','ANALYST',7566,str_to_date('13-7-1987','%d-%m-%y %Y%m%d')-85,3000,NULL,20);
INSERT INTO EMP VALUES
(7839,'KING','PRESIDENT',NULL,str_to_date('17-11-1981','%d-%m-%y %Y%m%d'),5000,NULL,10);
INSERT INTO EMP VALUES
(7844,'TURNER','SALESMAN',7698,str_to_date('8-9-1981','%d-%m-%y %Y%m%d'),1500,0,30);
INSERT INTO EMP VALUES
(7876,'ADAMS','CLERK',7788,str_to_date('13-7-1987','%d-%m-%y %Y%m%d'),1100,NULL,20);
INSERT INTO EMP VALUES
(7900,'JAMES','CLERK',7698,str_to_date('3-12-1981','%d-%m-%y %Y%m%d'),950,NULL,30);
INSERT INTO EMP VALUES
(7902,'FORD','ANALYST',7566,str_to_date('3-12-1981','%d-%m-%y %Y%m%d'),3000,NULL,20);
INSERT INTO EMP VALUES
(7934,'MILLER','CLERK',7782,str_to_date('23-1-1982','%d-%m-%y %Y%m%d'),1300,NULL,10);

CREATE TABLE BONUS
    (
    ENAME VARCHAR(10)  ,
    JOB VARCHAR(9)  ,
    SAL int,
    COMM int
    ) ;
		
CREATE TABLE SALGRADE
      ( GRADE int,
    LOSAL int,
    HISAL int );
	
INSERT INTO SALGRADE VALUES (1,700,1200);
INSERT INTO SALGRADE VALUES (2,1201,1400);
INSERT INTO SALGRADE VALUES (3,1401,2000);
INSERT INTO SALGRADE VALUES (4,2001,3000);
INSERT INTO SALGRADE VALUES (5,3001,9999);

commit;


drop table if exists professor;

create table professor
(profno int(4) primary key,
 name  varchar(20) not null, 
 id  varchar(15) not null,
 position varchar (30) not null,
 pay int (3) not null,
 hiredate  date not null,
 bonus int(4) ,
 deptno  int(3),
 email  varchar(50),
 hpage  varchar(50));
 
insert into professor
values(1001,'Audie Murphy','Murphy','a full professor',550,str_to_date('1980-06-23','%Y-%m-%d %Y%m%d'),100,101,'captain@abc.net','http://www.abc.net');

insert into professor
values(1002,'Angela Bassett','Bassett','assistant professor',380,str_to_date('1987-01-30','%Y-%m-%d %Y%m%d'),60,101,'sweety@abc.net','http://www.abc.net');

insert into professor
values (1003,'Jessica Lange','Lange','instructor',270,str_to_date('1998-03-22','%Y-%m-%d %Y%m%d'),null,101,'pman@power.com','http://www.power.com');

insert into professor
values (2001,'Winona Ryder','Ryder','instructor',250,str_to_date('2001-09-01','%Y-%m-%d %Y%m%d'),null,102,'lamb1@hamail.net',null);

insert into professor
values (2002,'Michelle Pfeiffer','Pfeiffer','assistant professor',350,str_to_date('1985-11-30','%Y-%m-%d %Y%m%d'),80,102,'int1@naver.com','http://num1.naver.com');

insert into professor
values (2003,'Whoopi Goldberg','Goldberg','a full professor',490,str_to_date('1982-04-29','%Y-%m-%d %Y%m%d'),90,102,'bdragon@naver.com',null);

insert into professor
values (3001,'Emma Thompson','Thompson','a full professor',530,str_to_date('1981-10-23','%Y-%m-%d %Y%m%d'),110,103,'angel1004@hanmir.com',null);

insert into professor
values (3002,'Julia Roberts','Roberts','assistant professor',330,str_to_date('1997-07-01','%Y-%m-%d %Y%m%d'),50,103,'naone10@empal.com',null);

insert into professor
values (3003,'Sharon Stone','Stone','instructor',290,str_to_date('2002-02-24','%Y-%m-%d %Y%m%d'),null,103,'only_u@abc.com',null);

insert into professor
values (4001,'Meryl Streep','Streep','a full professor',570,str_to_date('1981-10-23','%Y-%m-%d %Y%m%d'),130,201,'chebin@daum.net',null);

insert into professor
values (4002,'Susan Sarandon','Sarandon','assistant professor',330,str_to_date('2009-08-30','%Y-%m-%d %Y%m%d'),null,201,'gogogo@def.com',null);

insert into professor
values (4003,'Nicole Kidman','Kidman','assistant professor',310,str_to_date('1999-12-01','%Y-%m-%d %Y%m%d'),50,202,'mypride@hanmail.net',null);

insert into professor
values (4004,'Holly Hunter','Hunter','instructor',260,str_to_date('2009-01-28','%Y-%m-%d %Y%m%d'),null,202,'ironman@naver.com',null);

insert into professor
values (4005,'Meg Ryan','Ryan','a full professor',500,str_to_date('1985-09-18','%Y-%m-%d %Y%m%d'),80,203,'standkang@naver.com',null);

insert into professor 
values (4006,'Andie Macdowell','Macdowell','instructor',220,str_to_date('2010-06-28','%Y-%m-%d %Y%m%d'),null,301,'napeople@jass.com',null);

insert into professor
values (4007,'Jodie Foster','Foster','assistant professor',290,str_to_date('2001-05-23','%Y-%m-%d %Y%m%d'),30,301,'silver-her@daum.net',null);

commit;

drop table if exists department;

create table department
( deptno int(3) primary key ,
  dname varchar(50) not null,
  part int(3),
  build  varchar(30));

insert into department 
values (101,'Computer Engineering',100,'Information Bldg');

insert into department
values (102,'Multimedia Engineering',100,'Multimedia Bldg');

insert into department
values (103,'Software Engineering',100,'Software Bldg');

insert into department
values (201,'Electronic Engineering',200,'Electronic Control Bldg');

insert into department
values (202,'Mechanical Engineering',200,'Machining Experiment Bldg');

insert into department
values (203,'Chemical Engineering',200,'Chemical Experiment Bldg');

insert into department
values (301,'Library and Information science',300,'College of Liberal Arts');

insert into department
values (100,'Department of Computer Information',10,null);

insert into department
values (200,'Department of Mechatronics',10,null);

insert into department
values (300,'Department of Humanities and Society',20,null);

insert into department
values (10,'College of Engineering',null,null);

insert into department
values (20,'College of Liberal Arts',null,null);

commit;
 

drop table if exists student;

create table student
( studno int(4) primary key,
  name   varchar(30) not null,
  id varchar(20) not null unique,
  grade int check(grade between 1 and 6),
  jumin char(13) not null,
  birthday  date,
  tel varchar(15),
  height  int(4),
  weight  int(3),
  deptno1 int(3),
  deptno2 int(3),
  profno  int(4)) ;

insert into student values (
9411,'James Seo','75true',4,'7510231901813',str_to_date('1975-10-23','%Y-%m-%d %Y%m%d'),'055)381-2158',180,72,101,201,1001);

insert into student values (
9412,'Rene Russo','Russo',4,'7502241128467',str_to_date('1975-02-24','%Y-%m-%d %Y%m%d'),'051)426-1700',172,64,102,null,2001);

insert into student values (
9413,'Sandra Bullock','Bullock',4,'7506152123648',str_to_date('1975-06-15','%Y-%m-%d %Y%m%d'),'053)266-8947',168,52,103,203,3002);

insert into student values (
9414,'Demi Moore','Moore',4,'7512251063421',str_to_date('1975-12-25','%Y-%m-%d %Y%m%d'),'02)6255-9875',177,83,201,null,4001);

insert into student values (
9415,'Danny Glover','Glover',4,'7503031639826',str_to_date('1975-03-03','%Y-%m-%d %Y%m%d'),'031)740-6388',182,70,202,null,4003);

insert into student values (
9511,'Billy Crystal','Crystal',3,'7601232186327',str_to_date('1976-01-23','%Y-%m-%d %Y%m%d'),'055)333-6328',164,48,101,null,1002);

insert into student values (
9512,'Nicholas Cage','Cage',3,'7604122298371',str_to_date('1976-04-12','%Y-%m-%d %Y%m%d'),'051)418-9627',161,42,102,201,2002);

insert into student values (
9513,'Micheal Keaton','Keaton',3,'7609112118379',str_to_date('1976-09-11','%Y-%m-%d %Y%m%d'),'051)724-9618',177,55,202,null,4003);

insert into student values (
9514,'Bill Murray','Murray',3,'7601202378641',str_to_date('1976-01-20','%Y-%m-%d %Y%m%d'),'055)296-3784',160,58,301,101,4007);

insert into student values (
9515,'Macaulay Culkin','Culkin',3,'7610122196482',str_to_date('1976-10-12','%Y-%m-%d %Y%m%d'),'02)312-9838',171,54,201,null,4001);

insert into student values (
9611,'Richard Dreyfus','Dreyfus',2,'7711291186223',str_to_date('1977-11-29','%Y-%m-%d %Y%m%d'),'02)6788-4861',182,72,101,null,1002);

insert into student values (
9612,'Tim Robbins','Robbins',2,'7704021358674',str_to_date('1977-04-02','%Y-%m-%d %Y%m%d'),'055)488-2998',171,70,102,null,2001);

insert into student values (
9613,'Wesley Snipes','Snipes',2,'7709131276431',str_to_date('1977-09-13','%Y-%m-%d %Y%m%d'),'053)736-4981',175,82,201,null,4002);

insert into student values (
9614,'Steve Martin','Martin',2,'7702261196365',str_to_date('1977-02-26','%Y-%m-%d %Y%m%d'),'02)6175-3945',166,51,201,null,4003);

insert into student values (
9615,'Daniel Day-Lewis','Day-Lewis',2,'7712141254963',str_to_date('1977-12-14','%Y-%m-%d %Y%m%d'),'051)785-6984',184,62,301,null,4007);

insert into student values (
9711,'Danny Devito','Devito',1,'7808192157498',str_to_date('1978-08-19','%Y-%m-%d %Y%m%d'),'055)278-3649',162,48,101,null,null);

insert into student values (
9712,'Sean Connery','Connery',1,'7801051776346',str_to_date('1978-01-05','%Y-%m-%d %Y%m%d'),'02)381-5440',175,63,201,null,null);

insert into student values (
9713,'Christian Slater','Slater',1,'7808091786954',str_to_date('1978-08-09','%Y-%m-%d %Y%m%d'),'031)345-5677',173,69,201,null,null);

insert into student values (
9714,'Charlie Sheen','Sheen',1,'7803241981987',str_to_date('1978-03-24','%Y-%m-%d %Y%m%d'),'055)423-9870',179,81,102,null,null);

insert into student values (
9715,'Anthony Hopkins','Hopkins',1,'7802232116784',str_to_date('1978-02-23','%Y-%m-%d %Y%m%d'),'02)6122-2345',163,51,103,null,null);

commit;

drop table if exists student;

create table student

( studno int(4) primary key,
  name   varchar(30) not null,
  id varchar(20) not null unique,
  grade int check(grade between 1 and 6),
  jumin char(13) not null,
  birthday  date,
  tel varchar(15),
  height  int(4),
  weight  int(3),
  deptno1 int(3),
  deptno2 int(3),
  profno  int(4));

insert into student values (
9411,'James Seo','75true',4,'7510231901813',str_to_date('1975-10-23','%Y-%m-%d %Y%m%d'),'055)381-2158',180,72,101,201,1001);

insert into student values (
9412,'Rene Russo','Russo',4,'7502241128467',str_to_date('1975-02-24','%Y-%m-%d %Y%m%d'),'051)426-1700',172,64,102,null,2001);

insert into student values (
9413,'Sandra Bullock','Bullock',4,'7506152123648',str_to_date('1975-06-15','%Y-%m-%d %Y%m%d'),'053)266-8947',168,52,103,203,3002);

insert into student values (
9414,'Demi Moore','Moore',4,'7512251063421',str_to_date('1975-12-25','%Y-%m-%d %Y%m%d'),'02)6255-9875',177,83,201,null,4001);

insert into student values (
9415,'Danny Glover','Glover',4,'7503031639826',str_to_date('1975-03-03','%Y-%m-%d %Y%m%d'),'031)740-6388',182,70,202,null,4003);

insert into student values (
9511,'Billy Crystal','Crystal',3,'7601232186327',str_to_date('1976-01-23','%Y-%m-%d %Y%m%d'),'055)333-6328',164,48,101,null,1002);

insert into student values (
9512,'Nicholas Cage','Cage',3,'7604122298371',str_to_date('1976-04-12','%Y-%m-%d %Y%m%d'),'051)418-9627',161,42,102,201,2002);

insert into student values (
9513,'Micheal Keaton','Keaton',3,'7609112118379',str_to_date('1976-09-11','%Y-%m-%d %Y%m%d'),'051)724-9618',177,55,202,null,4003);

insert into student values (
9514,'Bill Murray','Murray',3,'7601202378641',str_to_date('1976-01-20','%Y-%m-%d %Y%m%d'),'055)296-3784',160,58,301,101,4007);

insert into student values (
9515,'Macaulay Culkin','Culkin',3,'7610122196482',str_to_date('1976-10-12','%Y-%m-%d %Y%m%d'),'02)312-9838',171,54,201,null,4001);

insert into student values (
9611,'Richard Dreyfus','Dreyfus',2,'7711291186223',str_to_date('1977-11-29','%Y-%m-%d %Y%m%d'),'02)6788-4861',182,72,101,null,1002);

insert into student values (
9612,'Tim Robbins','Robbins',2,'7704021358674',str_to_date('1977-04-02','%Y-%m-%d %Y%m%d'),'055)488-2998',171,70,102,null,2001);

insert into student values (
9613,'Wesley Snipes','Snipes',2,'7709131276431',str_to_date('1977-09-13','%Y-%m-%d %Y%m%d'),'053)736-4981',175,82,201,null,4002);

insert into student values (
9614,'Steve Martin','Martin',2,'7702261196365',str_to_date('1977-02-26','%Y-%m-%d %Y%m%d'),'02)6175-3945',166,51,201,null,4003);

insert into student values (
9615,'Daniel Day-Lewis','Day-Lewis',2,'7712141254963',str_to_date('1977-12-14','%Y-%m-%d %Y%m%d'),'051)785-6984',184,62,301,null,4007);

insert into student values (
9711,'Danny Devito','Devito',1,'7808192157498',str_to_date('1978-08-19','%Y-%m-%d %Y%m%d'),'055)278-3649',162,48,101,null,null);

insert into student values (
9712,'Sean Connery','Connery',1,'7801051776346',str_to_date('1978-01-05','%Y-%m-%d %Y%m%d'),'02)381-5440',175,63,201,null,null);

insert into student values (
9713,'Christian Slater','Slater',1,'7808091786954',str_to_date('1978-08-09','%Y-%m-%d %Y%m%d'),'031)345-5677',173,69,201,null,null);

insert into student values (
9714,'Charlie Sheen','Sheen',1,'7803241981987',str_to_date('1978-03-24','%Y-%m-%d %Y%m%d'),'055)423-9870',179,81,102,null,null);

insert into student values (
9715,'Anthony Hopkins','Hopkins',1,'7802232116784',str_to_date('1978-02-23','%Y-%m-%d %Y%m%d'),'02)6122-2345',163,51,103,null,null);

commit;

drop table if exists  emp2 cascade;

CREATE TABLE EMP2 (
 EMPNO       int  PRIMARY KEY,
 NAME        varchar(30) NOT NULL,
 BIRTHDAY    DATE,
 DEPTNO      varchar(06) NOT NULL,
 EMP_TYPE    varchar(30),
 TEL         varchar(15),
 HOBBY       varchar(30),
 PAY         int,
 POSITION    varchar(30),
 PEMPNO      int
);

INSERT INTO EMP2 VALUES (19900101,'Kurt Russell',str_to_date('19640125','%Y%m%d'),'0001','Permanent employee','054)223-0001','music',100000000,'Boss',null);
INSERT INTO EMP2 VALUES (19960101,'AL Pacino',str_to_date('19730322','%Y%m%d'),'1000','Permanent employee','02)6255-8000','reading',72000000,'Department head',19900101);
INSERT INTO EMP2 VALUES (19970201,'Woody Harrelson',str_to_date('19750415','%Y%m%d'),'1000','Permanent employee','02)6255-8005','Fitness',50000000,'Section head',19960101);
INSERT INTO EMP2 VALUES (19930331,'Tommy Lee Jones',str_to_date('19760525','%Y%m%d'),'1001','Perment employee','02)6255-8010','bike',60000000,'Deputy department head',19960101);
INSERT INTO EMP2 VALUES (19950303,'Gene Hackman',str_to_date('19730615','%Y%m%d'),'1002','Perment employee','02)6255-8020','Marathon',56000000,'Section head',19960101);
INSERT INTO EMP2 VALUES (19966102,'Kevin Bacon',str_to_date('19720705','%Y%m%d'),'1003','Perment employee','052)223-4000','Music',75000000,'Department head',19900101);
INSERT INTO EMP2 VALUES (19930402,'Hugh Grant',str_to_date('19720815','%Y%m%d'),'1004','Perment employee','042)998-7005','Climb',51000000,'Section head',19966102);
INSERT INTO EMP2 VALUES (19960303,'Keanu Reeves',str_to_date('19710925','%Y%m%d'),'1005','Perment employee','031)564-3340','Climb',35000000,'Deputy Section chief',19966102);
INSERT INTO EMP2 VALUES (19970112,'Val Kilmer',str_to_date('19761105','%Y%m%d'),'1006','Perment employee','054)223-4500','Swim',68000000,'Department head',19900101);
INSERT INTO EMP2 VALUES (19960212,'Chris O''Donnell',str_to_date('19721215','%Y%m%d'),'1007','Perment employee','054)223-4600',null,49000000,'Section head',19970112);
INSERT INTO EMP2 VALUES (20000101,'Jack Nicholson',str_to_date('19850125','%Y%m%d'),'1008','Contracted Worker','051)123-4567','Climb', 30000000,'',19960212);
INSERT INTO EMP2 VALUES (20000102,'Denzel Washington',str_to_date('19830322','%Y%m%d'),'1009','Contracted Worker','031)234-5678','Fishing', 30000000,'',19960212);
INSERT INTO EMP2 VALUES (20000203,'Richard Gere',str_to_date('19820415','%Y%m%d'),'1010','Contracted Worker','02)2345-6789','Baduk', 30000000,'',19960212);
INSERT INTO EMP2 VALUES (20000334,'Kevin Costner',str_to_date('19810525','%Y%m%d'),'1011','Contracted Worker','053)456-7890','Singing', 30000000,'',19960212);
INSERT INTO EMP2 VALUES (20000305,'JohnTravolta',str_to_date('19800615','%Y%m%d'),'1008','Probation','051)567-8901','Reading book', 22000000,'',19960212);
INSERT INTO EMP2 VALUES (20006106,'Robert De Niro',str_to_date('19800705','%Y%m%d'),'1009','Probation','031)678-9012','Driking',   22000000,'',19960212);
INSERT INTO EMP2 VALUES (20000407,'Sly Stallone',str_to_date('19800815','%Y%m%d'),'1010','Probation','02)2789-0123','Computer game', 22000000,'',19960212);
INSERT INTO EMP2 VALUES (20000308,'Tom Cruise',str_to_date('19800925','%Y%m%d'),'1011','Intern','053)890-1234','Golf', 20000000,'',19960212);
INSERT INTO EMP2 VALUES (20000119,'Harrison Ford',str_to_date('19801105','%Y%m%d'),'1004','Intern','042)901-2345','Drinking',   20000000,'',19930402);
INSERT INTO EMP2 VALUES (20000210,'Clint Eastwood',str_to_date('19801215','%Y%m%d'),'1005','Intern','031)345-3456','Reading book', 20000000,'',19960303);
COMMIT;

drop table if exists  dept2 cascade;

CREATE TABLE DEPT2 (
 DCODE   varchar(06)  PRIMARY KEY,
 DNAME   varchar(30) NOT NULL,
 PDEPT varchar(06) ,
 AREA        varchar(30)
);

INSERT INTO DEPT2 VALUES ('0001','President','','Pohang Main Office');
INSERT INTO DEPT2 VALUES ('1000','Management Support Team','0001','Seoul Branch Office');
INSERT INTO DEPT2 VALUES ('1001','Financial Management Team','1000','Seoul Branch Office');
INSERT INTO DEPT2 VALUES ('1002','General affairs','1000','Seoul Branch Office');
INSERT INTO DEPT2 VALUES ('1003','Engineering division','0001','Pohang Main Office');
INSERT INTO DEPT2 VALUES ('1004','H/W Support Team','1003','Daejeon Branch Office');
INSERT INTO DEPT2 VALUES ('1005','S/W Support Team','1003','Kyunggi Branch Office');
INSERT INTO DEPT2 VALUES ('1006','Business Department','0001','Pohang Main Office');
INSERT INTO DEPT2 VALUES ('1007','Business Planning Team','1006','Pohang Main Office');
INSERT INTO DEPT2 VALUES ('1008','Sales1 Team','1007','Busan Branch Office');
INSERT INTO DEPT2 VALUES ('1009','Sales2 Team','1007','Kyunggi Branch Office');
INSERT INTO DEPT2 VALUES ('1010','Sales3 Team','1007','Seoul Branch Office');
INSERT INTO DEPT2 VALUES ('1011','Sales4 Team','1007','Ulsan Branch Office');

commit;

drop table if exists  cal;

CREATE TABLE cal
   (weekno  varchar(1),
    day   varchar(5),
    dayno varchar(2)) ;

insert into cal values ('1','SUN','1');
insert into cal values ('1','MON','2');
insert into cal values ('1','TUE','3');
insert into cal values ('1','WED','4');
insert into cal values ('1','THU','5');
insert into cal values ('1','FRI','6');
insert into cal values ('1','SAT','7');
insert into cal values ('2','SUN','8');
insert into cal values ('2','MON','9');
insert into cal values ('2','TUE','10');
insert into cal values ('2','WED','11');
insert into cal values ('2','THU','12');
insert into cal values ('2','FRI','13');
insert into cal values ('2','SAT','14');
insert into cal values ('3','SUN','15');
insert into cal values ('3','MON','16');
insert into cal values ('3','TUE','17');
insert into cal values ('3','WED','18');
insert into cal values ('3','THU','19');
insert into cal values ('3','FRI','20');
insert into cal values ('3','SAT','21');
insert into cal values ('4','SUN','22');
insert into cal values ('4','MON','23');
insert into cal values ('4','TUE','24');
insert into cal values ('4','WED','25');
insert into cal values ('4','THU','26');
insert into cal values ('4','FRI','27');
insert into cal values ('4','SAT','28');
insert into cal values ('5','SUN','29');
insert into cal values ('5','MON','30');
insert into cal values ('5','TUE','31');

commit ;

drop table if exists  gift;

create table gift
( gno  int ,
  gname varchar(30) ,
  g_start  int ,
  g_end  int );

insert into gift values(1,'Tuna Set',1,100000);
insert into gift values(2,'Shampoo Set',100001,200000);
insert into gift values(3,'Car wash Set',200001,300000);
insert into gift values(4,'Kitchen Supplies Set',300001,400000);
insert into gift values(5,'Mountain bike',400001,500000);
insert into gift values(6,'LCD Monitor',500001,600000);
insert into gift values(7,'Notebook',600001,700000);
insert into gift values(8,'Wall-Mountable TV',700001,800000);
insert into gift values(9,'Drum Washing Machine',800001,900000);
insert into gift values(10,'Refrigerator',900001,1000000);

commit ;

drop table if exists  customer ;

create table customer
(gno  int(8) ,
 gname varchar(30) ,
 jumin char(13) ,
 point int) ;

insert into customer values (20010001,'James Seo','7510231369824',980000);
insert into customer values (20010002,'Mel Gibson','7502241128467',73000);
insert into customer values (20010003,'Bruce Willis','7506152123648',320000);
insert into customer values (20010004,'Bill Pullman','7512251063421',65000);
insert into customer values (20010005,'Liam Neeson','7503031639826',180000);
insert into customer values (20010006,'Samuel Jackson','7601232186327',153000);
insert into customer values (20010007,'Ahnjihye','7604212298371',273000);
insert into customer values (20010008,'Jim Carrey','7609112118379',315000);
insert into customer values (20010009,'Morgan Freeman','7601202378641',542000);
insert into customer values (20010010,'Arnold Scharz','7610122196482',265000);
insert into customer values (20010011,'Brad Pitt','7711291186223',110000);
insert into customer values (20010012,'Michael Douglas','7704021358674',99000);
insert into customer values (20010013,'Robin Williams','7709131276431',470000);
insert into customer values (20010014,'Tom Hanks','7702261196365',298000);
insert into customer values (20010015,'Angela Bassett','7712141254963',420000);
insert into customer values (20010016,'Jessica Lange','7808192157498',598000);
insert into customer values (20010017,'Winona Ryder','7801051776346',625000);
insert into customer values (20010018,'Michelle Pfeiffer','7808091786954',670000);
insert into customer values (20010019,'Whoopi Goldberg','7803242114563',770000);
insert into customer values (20010020,'Emma Thompson','7802232116784',730000);
commit ;

drop table if exists  hakjum  ;

create table hakjum
(grade char(3) ,
 min_point  int ,
 max_point  int );

insert into hakjum values ('A+',96,100);
insert into hakjum values ('A0',90,95);
insert into hakjum values ('B+',86,89);
insert into hakjum values ('B0',80,85);
insert into hakjum values ('C+',76,79);
insert into hakjum values ('C0',70,75);
insert into hakjum values ('D',0,69);

commit;


drop table if exists  score  ;

create table score
(studno  int ,
 total int);

insert into score values (9411,97);
insert into score values (9412,78);
insert into score values (9413,83);
insert into score values (9414,62);
insert into score values (9415,88);
insert into score values (9511,92);
insert into score values (9512,87);
insert into score values (9513,81);
insert into score values (9514,79);
insert into score values (9515,95);
insert into score values (9611,89);
insert into score values (9612,77);
insert into score values (9613,86);
insert into score values (9614,82);
insert into score values (9615,87);
insert into score values (9711,91);
insert into score values (9712,88);
insert into score values (9713,82);
insert into score values (9714,83);
insert into score values (9715,84);

commit ;

drop table if exists  p_grade  ;

create table p_grade
( position  varchar(30) ,
  s_age int ,
  e_age int ,
  s_year int ,
  e_year int ,
  s_pay  int ,
  e_pay  int );

insert into p_grade values ('Manager',0,24,1,2,12000000,29990000);
insert into p_grade values ('Deputy Section chief',25,28,3,5,30000000,45000000);
insert into p_grade values ('Section head',29,32,6,8,45010000,51000000);
insert into p_grade values ('Deputy department head',33,36,9,10,51010000,60000000);
insert into p_grade values ('Department head',37,40,11,13,60010000,75000000);
insert into p_grade values ('Director',41,55,14,99,75010000,100000000);

commit ;


drop table if exists t_reg  ;

CREATE TABLE t_reg (text varchar(10)) ;

insert into t_reg(text) VALUES
	('ABC123'),
	('ABC 123'),
	('ABC  123'),
	('abc 123'),
	('abc  123'),
	('a1b2c3'),
	('aabbcc123'),
	('?/!@#$*&'),
	('\~*().,'),
	(123123),
	('123abc'),
	('abc');

commit;


-- insert all test table

drop table if exists  p_01 ;
drop table if exists  p_02 ;

CREATE TABLE p_01
(no  int ,
 name varchar(15) );

CREATE TABLE p_02
(no int ,
 name varchar(15) );


-- merge test table

drop table if exists  pt_01 ;
drop table if exists  pt_02 ;
drop table if exists  p_total ;

create table pt_01
(sno varchar(8) , pno char(4) , qty int , price  int) ;

create table pt_02
(sno varchar(8) , pno char(4) , qty int , price int) ;

create table p_total
(sno  varchar(8) , pno char(4) , qty int , price int) ;


INSERT INTO pt_01 VALUES 
	('12010101','1000',1,500),
  ('12010102','1001',1,400),
  ('12010103','1003',1,300);
	
insert INTO pt_02 VALUES 
	('12010201','1004',1,600),
  ('12010202','1000',1,500),
  ('12010203','1005',1,700);

commit;

-- DML error logging test table

drop table if exists  dml_err_test ;

CREATE TABLE dml_err_test
( no int primary key,
  name varchar(10));

INSERT INTO dml_err_test VALUES 
  (1,'AAA'),
  (2,'BBB');
	
commit ;



-- Constraint test table

drop table if exists  t_novalidate  ;
drop table if exists  test_novalidate  ;

CREATE TABLE t_novalidate
( no int primary key ,
  name varchar(10) not null );

INSERT INTO t_novalidate VALUES(1,'AAA');
INSERT INTO t_novalidate VALUES(2,'BBB');
INSERT INTO t_novalidate VALUES(3,'CCC');
COMMIt ;

drop table if exists t_validate  ;
drop table if exists  test_validate ;

CREATE TABLE t_validate
 ( no    int PRIMARY KEY ,
   name  varchar(10) NOT NULL);

INSERT INTO t_validate VALUES (1,'AAA');
INSERT INTO t_validate VALUES (2,'BBB');
INSERT INTO t_validate VALUES (3,'CCC');
COMMIT ;

drop table if exists  t_enable ;
drop table if exists  test_enable  ;

CREATE TABLE t_enable
 ( no int PRIMARY KEY ,
   name varchar(10) NOT NULL) ;



-- group function test table

drop table if exists  product  ;

CREATE TABLE product
( p_code  int(3) primary key,
  p_name varchar(20) not null ,
  p_price  int) ;


insert into product values (100,'Shrimp snack',800);
insert into product values (101,'Patato snack',900);
insert into product values (102,'Peanut snack',1000);
insert into product values (103,'Sesame snack',900);
insert into product values (104,'Onion snack',800);
insert into product values (105,'Sweet potato snack',1500);
commit;

drop table if exists  panmae  ;

create table panmae
( p_date varchar(8) not null,
  p_code int not null,
  p_qty  int ,
  p_total int ,
  p_store varchar(5) );


insert into panmae values ('20110101',100,3,2400,'1000');
insert into panmae values ('20110101',101,5,4500,'1001');
insert into panmae values ('20110101',102,2,2000,'1003');
insert into panmae values ('20110101',103,6,5400,'1004');
insert into panmae values ('20110102',102,2,2000,'1000');
insert into panmae values ('20110102',103,5,4500,'1002');
insert into panmae values ('20110102',104,3,2400,'1002');
insert into panmae values ('20110102',105,2,3000,'1000');
insert into panmae values ('20110103',100,10,8000,'1004');
insert into panmae values ('20110103',100,2,1600,'1000');
insert into panmae values ('20110103',100,3,2400,'1001');
insert into panmae values ('20110103',101,4,3600,'1003');
insert into panmae values ('20110104',100,2,1600,'1002');
insert into panmae values ('20110104',100,4,3200,'1003');
insert into panmae values ('20110104',100,5,4000,'1004');
insert into panmae values ('20110104',101,3,2700,'1001');
insert into panmae values ('20110104',101,4,3600,'1002');
insert into panmae values ('20110104',101,3,2700,'1003');
insert into panmae values ('20110104',102,4,4000,'1001');
insert into panmae values ('20110104',102,2,2000,'1002');
insert into panmae values ('20110104',103,2,1800,'1003');


commit;

drop table if exists member  ;
create table member
(no int(4) not null ,
 name varchar(20) not null ,
 jumin char(13) primary key ,
 passwd varchar(10) not null ,
 id  varchar(10) not null unique ,
 an_key varchar(10) ,
 an_key_dap  varchar(15) );


insert into member
 values (1001,'Nicholas Cage','7510231234567','a1234','simson','wife?','Jodie Foster') ;

insert into member
 values(1002,'Jodie Foster','7509222345678','b1234','bobby','husband?','Nicholas Cage') ;

insert into member
 values (1003,'Macaulay Culkin','1410234567890','c1234','daddy','father?','Nicholas Cage');

insert into member
 values (1004,'Nicole Kidman','1609223456789','d1234','mommy','Mather?','Jodie Foster') ;



commit;

drop table if exists  t_reg2  ;
create table t_reg2
(no int , 
 ip varchar(20));

insert into t_reg2 values (1,'10.10.0.1') ;
insert into t_reg2 values (2,'10.10.10.1') ;
insert into t_reg2 values (3,'172.16.5.100') ;
insert into t_reg2 values (4,'172.61.186.2') ;
insert into t_reg2 values (5,'172.61.168.2') ;
insert into t_reg2 values (6,'255.255.255.0') ;
commit;

drop table if exists fruit  ;
create table fruit (name varchar(10) , price int(5)) ;
insert into fruit values ('apple' , 100) ;
insert into fruit values ('grape' , 200) ;
insert into fruit values ('orange' ,300) ;
commit;

drop table if exists  loan  ;

create table loan
( l_date varchar(8) not null,
  l_code int not null,
  l_qty  int ,
  l_total int ,
  l_store varchar(5) );


insert into loan values ('20110101',100,3,2400,'1000');
insert into loan values ('20110101',101,5,4500,'1001');
insert into loan values ('20110101',102,2,2000,'1003');
insert into loan values ('20110101',103,6,5400,'1004');
insert into loan values ('20110102',102,2,2000,'1000');
insert into loan values ('20110102',103,5,4500,'1002');
insert into loan values ('20110102',104,3,2400,'1002');
insert into loan values ('20110102',105,2,3000,'1000');
insert into loan values ('20110103',100,10,8000,'1004');
insert into loan values ('20110103',100,2,1600,'1000');
insert into loan values ('20110103',100,3,2400,'1001');
insert into loan values ('20110103',101,4,3600,'1003');
insert into loan values ('20110104',100,2,1600,'1002');
insert into loan values ('20110104',100,4,3200,'1003');
insert into loan values ('20110104',100,5,4000,'1004');
insert into loan values ('20110104',101,3,2700,'1001');
insert into loan values ('20110104',101,4,3600,'1002');
insert into loan values ('20110104',101,3,2700,'1003');
insert into loan values ('20110104',102,4,4000,'1001');
insert into loan values ('20110104',102,2,2000,'1002');
insert into loan values ('20110104',103,2,1800,'1003');


commit;

-- -----------------------------------------------------------------------------------
-- KTDS_HR
-- -----------------------------------------------------------------------------------
drop database if exists ktds_hr;
create database ktds_hr;
use ktds_hr;


drop table if exists COUNTRIES;

CREATE TABLE COUNTRIES (
  COUNTRY_ID CHAR(2) NOT NULL,
  COUNTRY_NAME VARCHAR(40),
  REGION_ID int
);

INSERT INTO COUNTRIES VALUES ('AR', 'Argentina', '2');
INSERT INTO COUNTRIES VALUES ('AU', 'Australia', '3');
INSERT INTO COUNTRIES VALUES ('BE', 'Belgium', '1');
INSERT INTO COUNTRIES VALUES ('BR', 'Brazil', '2');
INSERT INTO COUNTRIES VALUES ('CA', 'Canada', '2');
INSERT INTO COUNTRIES VALUES ('CH', 'Switzerland', '1');
INSERT INTO COUNTRIES VALUES ('CN', 'China', '3');
INSERT INTO COUNTRIES VALUES ('DE', 'Germany', '1');
INSERT INTO COUNTRIES VALUES ('DK', 'Denmark', '1');
INSERT INTO COUNTRIES VALUES ('EG', 'Egypt', '4');
INSERT INTO COUNTRIES VALUES ('FR', 'France', '1');
INSERT INTO COUNTRIES VALUES ('IL', 'Israel', '4');
INSERT INTO COUNTRIES VALUES ('IN', 'India', '3');
INSERT INTO COUNTRIES VALUES ('IT', 'Italy', '1');
INSERT INTO COUNTRIES VALUES ('JP', 'Japan', '3');
INSERT INTO COUNTRIES VALUES ('KW', 'Kuwait', '4');
INSERT INTO COUNTRIES VALUES ('ML', 'Malaysia', '3');
INSERT INTO COUNTRIES VALUES ('MX', 'Mexico', '2');
INSERT INTO COUNTRIES VALUES ('NG', 'Nigeria', '4');
INSERT INTO COUNTRIES VALUES ('NL', 'Netherlands', '1');
INSERT INTO COUNTRIES VALUES ('SG', 'Singapore', '3');
INSERT INTO COUNTRIES VALUES ('UK', 'United Kingdom', '1');
INSERT INTO COUNTRIES VALUES ('US', 'United States of America', '2');
INSERT INTO COUNTRIES VALUES ('ZM', 'Zambia', '4');
INSERT INTO COUNTRIES VALUES ('ZW', 'Zimbabwe', '4');

commit;

DROP TABLE if exists DEPARTMENTS;
CREATE TABLE DEPARTMENTS (
  DEPARTMENT_ID int(4) NOT NULL,
  DEPARTMENT_NAM VARCHAR(30) NOT NULL,
  MANAGER_ID int(6),
  LOCATION_ID int(4));
	
INSERT INTO DEPARTMENTS VALUES ('10', 'Administration', '200', '1700');
INSERT INTO DEPARTMENTS VALUES ('20', 'Marketing', '201', '1800');
INSERT INTO DEPARTMENTS VALUES ('30', 'Purchasing', '114', '1700');
INSERT INTO DEPARTMENTS VALUES ('40', 'Human Resources', '203', '2400');
INSERT INTO DEPARTMENTS VALUES ('50', 'Shipping', '121', '1500');
INSERT INTO DEPARTMENTS VALUES ('60', 'IT', '103', '1400');
INSERT INTO DEPARTMENTS VALUES ('70', 'Public Relations', '204', '2700');
INSERT INTO DEPARTMENTS VALUES ('80', 'Sales', '145', '2500');
INSERT INTO DEPARTMENTS VALUES ('90', 'Executive', '100', '1700');
INSERT INTO DEPARTMENTS VALUES ('100', 'Finance', '108', '1700');
INSERT INTO DEPARTMENTS VALUES ('110', 'Accounting', '205', '1700');
INSERT INTO DEPARTMENTS VALUES ('120', 'Treasury', NULL, '1700');
INSERT INTO DEPARTMENTS VALUES ('130', 'Corporate Tax', NULL, '1700');
INSERT INTO DEPARTMENTS VALUES ('140', 'Control And Credit', NULL, '1700');
INSERT INTO DEPARTMENTS VALUES ('150', 'Shareholder Services', NULL, '1700');
INSERT INTO DEPARTMENTS VALUES ('160', 'Benefits', NULL, '1700');
INSERT INTO DEPARTMENTS VALUES ('170', 'Manufacturing', NULL, '1700');
INSERT INTO DEPARTMENTS VALUES ('180', 'Construction', NULL, '1700');
INSERT INTO DEPARTMENTS VALUES ('190', 'Contracting', NULL, '1700');
INSERT INTO DEPARTMENTS VALUES ('200', 'Operations', NULL, '1700');
INSERT INTO DEPARTMENTS VALUES ('210', 'IT Support', NULL, '1700');
INSERT INTO DEPARTMENTS VALUES ('220', 'NOC', NULL, '1700');
INSERT INTO DEPARTMENTS VALUES ('230', 'IT Helpdesk', NULL, '1700');
INSERT INTO DEPARTMENTS VALUES ('240', 'Government Sales', NULL, '1700');
INSERT INTO DEPARTMENTS VALUES ('250', 'Retail Sales', NULL, '1700');
INSERT INTO DEPARTMENTS VALUES ('260', 'Recruiting', NULL, '1700');
INSERT INTO DEPARTMENTS VALUES ('270', 'Payroll', NULL, '1700');

commit;	

DROP TABLE if exists EMPLOYEES;
CREATE TABLE EMPLOYEES (
  EMPLOYEE_ID int(6) NOT NULL,
  FIRST_NAME VARCHAR(20),
  LAST_NAME VARCHAR(25) NOT NULL,
  EMAIL VARCHAR(25 ) NOT NULL,
  PHONE_int VARCHAR(20 ),
  HIRE_DATE DATE NOT NULL,
  JOB_ID VARCHAR(10 ) NOT NULL,
  SALARY decimal(8,2),
  COMMISSION_PCT decimal(2,2),
  MANAGER_ID int(6),
  DEPARTMENT_ID int(4)
);

INSERT INTO EMPLOYEES VALUES ('100', 'Steven', 'King', 'SKING', '515.123.4567', str_to_date('2003-06-17', '%Y-%m-%d %Y%m%d'), 'AD_PRES', '24000', NULL, NULL, '90');
INSERT INTO EMPLOYEES VALUES ('101', 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568', str_to_date('2005-09-21', '%Y-%m-%d %Y%m%d'), 'AD_VP', '17000', NULL, '100', '90');
INSERT INTO EMPLOYEES VALUES ('102', 'Lex', 'De Haan', 'LDEHAAN', '515.123.4569', str_to_date('2001-01-13', '%Y-%m-%d %Y%m%d'), 'AD_VP', '17000', NULL, '100', '90');
INSERT INTO EMPLOYEES VALUES ('103', 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', str_to_date('2006-01-03', '%Y-%m-%d %Y%m%d'), 'IT_PROG', '9000', NULL, '102', '60');
INSERT INTO EMPLOYEES VALUES ('104', 'Bruce', 'Ernst', 'BERNST', '590.423.4568', str_to_date('2007-05-21', '%Y-%m-%d %Y%m%d'), 'IT_PROG', '6000', NULL, '103', '60');
INSERT INTO EMPLOYEES VALUES ('105', 'David', 'Austin', 'DAUSTIN', '590.423.4569', str_to_date('2005-06-25', '%Y-%m-%d %Y%m%d'), 'IT_PROG', '4800', NULL, '103', '60');
INSERT INTO EMPLOYEES VALUES ('106', 'Valli', 'Pataballa', 'VPATABAL', '590.423.4560', str_to_date('2006-02-05', '%Y-%m-%d %Y%m%d'), 'IT_PROG', '4800', NULL, '103', '60');
INSERT INTO EMPLOYEES VALUES ('107', 'Diana', 'Lorentz', 'DLORENTZ', '590.423.5567', str_to_date('2007-02-07', '%Y-%m-%d %Y%m%d'), 'IT_PROG', '4200', NULL, '103', '60');
INSERT INTO EMPLOYEES VALUES ('108', 'Nancy', 'Greenberg', 'NGREENBE', '515.124.4569', str_to_date('2002-08-17', '%Y-%m-%d %Y%m%d'), 'FI_MGR', '12008', NULL, '101', '100');
INSERT INTO EMPLOYEES VALUES ('109', 'Daniel', 'Faviet', 'DFAVIET', '515.124.4169', str_to_date('2002-08-16', '%Y-%m-%d %Y%m%d'), 'FI_ACCOUNT', '9000', NULL, '108', '100');
INSERT INTO EMPLOYEES VALUES ('110', 'John', 'Chen', 'JCHEN', '515.124.4269', str_to_date('2005-09-28', '%Y-%m-%d %Y%m%d'), 'FI_ACCOUNT', '8200', NULL, '108', '100');
INSERT INTO EMPLOYEES VALUES ('111', 'Ismael', 'Sciarra', 'ISCIARRA', '515.124.4369', str_to_date('2005-09-30', '%Y-%m-%d %Y%m%d'), 'FI_ACCOUNT', '7700', NULL, '108', '100');
INSERT INTO EMPLOYEES VALUES ('112', 'Jose Manuel', 'Urman', 'JMURMAN', '515.124.4469', str_to_date('2006-03-07', '%Y-%m-%d %Y%m%d'), 'FI_ACCOUNT', '7800', NULL, '108', '100');
INSERT INTO EMPLOYEES VALUES ('113', 'Luis', 'Popp', 'LPOPP', '515.124.4567', str_to_date('2007-12-07', '%Y-%m-%d %Y%m%d'), 'FI_ACCOUNT', '6900', NULL, '108', '100');
INSERT INTO EMPLOYEES VALUES ('114', 'Den', 'Raphaely', 'DRAPHEAL', '515.127.4561', str_to_date('2002-12-07', '%Y-%m-%d %Y%m%d'), 'PU_MAN', '11000', NULL, '100', '30');
INSERT INTO EMPLOYEES VALUES ('115', 'Alexander', 'Khoo', 'AKHOO', '515.127.4562', str_to_date('2003-05-18', '%Y-%m-%d %Y%m%d'), 'PU_CLERK', '3100', NULL, '114', '30');
INSERT INTO EMPLOYEES VALUES ('116', 'Shelli', 'Baida', 'SBAIDA', '515.127.4563', str_to_date('2005-12-24', '%Y-%m-%d %Y%m%d'), 'PU_CLERK', '2900', NULL, '114', '30');
INSERT INTO EMPLOYEES VALUES ('117', 'Sigal', 'Tobias', 'STOBIAS', '515.127.4564', str_to_date('2005-07-24', '%Y-%m-%d %Y%m%d'), 'PU_CLERK', '2800', NULL, '114', '30');
INSERT INTO EMPLOYEES VALUES ('118', 'Guy', 'Himuro', 'GHIMURO', '515.127.4565', str_to_date('2006-11-15', '%Y-%m-%d %Y%m%d'), 'PU_CLERK', '2600', NULL, '114', '30');
INSERT INTO EMPLOYEES VALUES ('119', 'Karen', 'Colmenares', 'KCOLMENA', '515.127.4566', str_to_date('2007-08-10', '%Y-%m-%d %Y%m%d'), 'PU_CLERK', '2500', NULL, '114', '30');
INSERT INTO EMPLOYEES VALUES ('120', 'Matthew', 'Weiss', 'MWEISS', '650.123.1234', str_to_date('2004-07-18', '%Y-%m-%d %Y%m%d'), 'ST_MAN', '8000', NULL, '100', '50');
INSERT INTO EMPLOYEES VALUES ('121', 'Adam', 'Fripp', 'AFRIPP', '650.123.2234', str_to_date('2005-04-10', '%Y-%m-%d %Y%m%d'), 'ST_MAN', '8200', NULL, '100', '50');
INSERT INTO EMPLOYEES VALUES ('122', 'Payam', 'Kaufling', 'PKAUFLIN', '650.123.3234', str_to_date('2003-05-01', '%Y-%m-%d %Y%m%d'), 'ST_MAN', '7900', NULL, '100', '50');
INSERT INTO EMPLOYEES VALUES ('123', 'Shanta', 'Vollman', 'SVOLLMAN', '650.123.4234', str_to_date('2005-10-10', '%Y-%m-%d %Y%m%d'), 'ST_MAN', '6500', NULL, '100', '50');
INSERT INTO EMPLOYEES VALUES ('124', 'Kevin', 'Mourgos', 'KMOURGOS', '650.123.5234', str_to_date('2007-11-16', '%Y-%m-%d %Y%m%d'), 'ST_MAN', '5800', NULL, '100', '50');
INSERT INTO EMPLOYEES VALUES ('125', 'Julia', 'Nayer', 'JNAYER', '650.124.1214', str_to_date('2005-07-16', '%Y-%m-%d %Y%m%d'), 'ST_CLERK', '3200', NULL, '120', '50');
INSERT INTO EMPLOYEES VALUES ('126', 'Irene', 'Mikkilineni', 'IMIKKILI', '650.124.1224', str_to_date('2006-09-28', '%Y-%m-%d %Y%m%d'), 'ST_CLERK', '2700', NULL, '120', '50');
INSERT INTO EMPLOYEES VALUES ('127', 'James', 'Landry', 'JLANDRY', '650.124.1334', str_to_date('2007-01-14', '%Y-%m-%d %Y%m%d'), 'ST_CLERK', '2400', NULL, '120', '50');
INSERT INTO EMPLOYEES VALUES ('128', 'Steven', 'Markle', 'SMARKLE', '650.124.1434', str_to_date('2008-03-08', '%Y-%m-%d %Y%m%d'), 'ST_CLERK', '2200', NULL, '120', '50');
INSERT INTO EMPLOYEES VALUES ('129', 'Laura', 'Bissot', 'LBISSOT', '650.124.5234', str_to_date('2005-08-20', '%Y-%m-%d %Y%m%d'), 'ST_CLERK', '3300', NULL, '121', '50');
INSERT INTO EMPLOYEES VALUES ('130', 'Mozhe', 'Atkinson', 'MATKINSO', '650.124.6234', str_to_date('2005-10-30', '%Y-%m-%d %Y%m%d'), 'ST_CLERK', '2800', NULL, '121', '50');
INSERT INTO EMPLOYEES VALUES ('131', 'James', 'Marlow', 'JAMRLOW', '650.124.7234', str_to_date('2005-02-16', '%Y-%m-%d %Y%m%d'), 'ST_CLERK', '2500', NULL, '121', '50');
INSERT INTO EMPLOYEES VALUES ('132', 'TJ', 'Olson', 'TJOLSON', '650.124.8234', str_to_date('2007-04-10', '%Y-%m-%d %Y%m%d'), 'ST_CLERK', '2100', NULL, '121', '50');
INSERT INTO EMPLOYEES VALUES ('133', 'Jason', 'Mallin', 'JMALLIN', '650.127.1934', str_to_date('2004-06-14', '%Y-%m-%d %Y%m%d'), 'ST_CLERK', '3300', NULL, '122', '50');
INSERT INTO EMPLOYEES VALUES ('134', 'Michael', 'Rogers', 'MROGERS', '650.127.1834', str_to_date('2006-08-26', '%Y-%m-%d %Y%m%d'), 'ST_CLERK', '2900', NULL, '122', '50');
INSERT INTO EMPLOYEES VALUES ('135', 'Ki', 'Gee', 'KGEE', '650.127.1734', str_to_date('2007-12-12', '%Y-%m-%d %Y%m%d'), 'ST_CLERK', '2400', NULL, '122', '50');
INSERT INTO EMPLOYEES VALUES ('136', 'Hazel', 'Philtanker', 'HPHILTAN', '650.127.1634', str_to_date('2008-02-06', '%Y-%m-%d %Y%m%d'), 'ST_CLERK', '2200', NULL, '122', '50');
INSERT INTO EMPLOYEES VALUES ('137', 'Renske', 'Ladwig', 'RLADWIG', '650.121.1234', str_to_date('2003-07-14', '%Y-%m-%d %Y%m%d'), 'ST_CLERK', '3600', NULL, '123', '50');
INSERT INTO EMPLOYEES VALUES ('138', 'Stephen', 'Stiles', 'SSTILES', '650.121.2034', str_to_date('2005-10-26', '%Y-%m-%d %Y%m%d'), 'ST_CLERK', '3200', NULL, '123', '50');
INSERT INTO EMPLOYEES VALUES ('139', 'John', 'Seo', 'JSEO', '650.121.2019', str_to_date('2006-02-12', '%Y-%m-%d %Y%m%d'), 'ST_CLERK', '2700', NULL, '123', '50');
INSERT INTO EMPLOYEES VALUES ('140', 'Joshua', 'Patel', 'JPATEL', '650.121.1834', str_to_date('2006-04-06', '%Y-%m-%d %Y%m%d'), 'ST_CLERK', '2500', NULL, '123', '50');
INSERT INTO EMPLOYEES VALUES ('141', 'Trenna', 'Rajs', 'TRAJS', '650.121.8009', str_to_date('2003-10-17', '%Y-%m-%d %Y%m%d'), 'ST_CLERK', '3500', NULL, '124', '50');
INSERT INTO EMPLOYEES VALUES ('142', 'Curtis', 'Davies', 'CDAVIES', '650.121.2994', str_to_date('2005-01-29', '%Y-%m-%d %Y%m%d'), 'ST_CLERK', '3100', NULL, '124', '50');
INSERT INTO EMPLOYEES VALUES ('143', 'Randall', 'Matos', 'RMATOS', '650.121.2874', str_to_date('2006-03-15', '%Y-%m-%d %Y%m%d'), 'ST_CLERK', '2600', NULL, '124', '50');
INSERT INTO EMPLOYEES VALUES ('144', 'Peter', 'Vargas', 'PVARGAS', '650.121.2004', str_to_date('2006-07-09', '%Y-%m-%d %Y%m%d'), 'ST_CLERK', '2500', NULL, '124', '50');
INSERT INTO EMPLOYEES VALUES ('145', 'John', 'Russell', 'JRUSSEL', '011.44.1344.429268', str_to_date('2004-10-01', '%Y-%m-%d %Y%m%d'), 'SA_MAN', '14000', '0.4', '100', '80');
INSERT INTO EMPLOYEES VALUES ('146', 'Karen', 'Partners', 'KPARTNER', '011.44.1344.467268', str_to_date('2005-01-05', '%Y-%m-%d %Y%m%d'), 'SA_MAN', '13500', '0.3', '100', '80');
INSERT INTO EMPLOYEES VALUES ('147', 'Alberto', 'Errazuriz', 'AERRAZUR', '011.44.1344.429278', str_to_date('2005-03-10', '%Y-%m-%d %Y%m%d'), 'SA_MAN', '12000', '0.3', '100', '80');
INSERT INTO EMPLOYEES VALUES ('148', 'Gerald', 'Cambrault', 'GCAMBRAU', '011.44.1344.619268', str_to_date('2007-10-15', '%Y-%m-%d %Y%m%d'), 'SA_MAN', '11000', '0.3', '100', '80');
INSERT INTO EMPLOYEES VALUES ('149', 'Eleni', 'Zlotkey', 'EZLOTKEY', '011.44.1344.429018', str_to_date('2008-01-29', '%Y-%m-%d %Y%m%d'), 'SA_MAN', '10500', '0.2', '100', '80');
INSERT INTO EMPLOYEES VALUES ('150', 'Peter', 'Tucker', 'PTUCKER', '011.44.1344.129268', str_to_date('2005-01-30', '%Y-%m-%d %Y%m%d'), 'SA_REP', '10000', '0.3', '145', '80');
INSERT INTO EMPLOYEES VALUES ('151', 'David', 'Bernstein', 'DBERNSTE', '011.44.1344.345268', str_to_date('2005-03-24', '%Y-%m-%d %Y%m%d'), 'SA_REP', '9500', '0.25', '145', '80');
INSERT INTO EMPLOYEES VALUES ('152', 'Peter', 'Hall', 'PHALL', '011.44.1344.478968', str_to_date('2005-08-20', '%Y-%m-%d %Y%m%d'), 'SA_REP', '9000', '0.25', '145', '80');
INSERT INTO EMPLOYEES VALUES ('153', 'Christopher', 'Olsen', 'COLSEN', '011.44.1344.498718', str_to_date('2006-03-30', '%Y-%m-%d %Y%m%d'), 'SA_REP', '8000', '0.2', '145', '80');
INSERT INTO EMPLOYEES VALUES ('154', 'Nanette', 'Cambrault', 'NCAMBRAU', '011.44.1344.987668', str_to_date('2006-12-09', '%Y-%m-%d %Y%m%d'), 'SA_REP', '7500', '0.2', '145', '80');
INSERT INTO EMPLOYEES VALUES ('155', 'Oliver', 'Tuvault', 'OTUVAULT', '011.44.1344.486508', str_to_date('2007-11-23', '%Y-%m-%d %Y%m%d'), 'SA_REP', '7000', '0.15', '145', '80');
INSERT INTO EMPLOYEES VALUES ('156', 'Janette', 'King', 'JKING', '011.44.1345.429268', str_to_date('2004-01-30', '%Y-%m-%d %Y%m%d'), 'SA_REP', '10000', '0.35', '146', '80');
INSERT INTO EMPLOYEES VALUES ('157', 'Patrick', 'Sully', 'PSULLY', '011.44.1345.929268', str_to_date('2004-03-04', '%Y-%m-%d %Y%m%d'), 'SA_REP', '9500', '0.35', '146', '80');
INSERT INTO EMPLOYEES VALUES ('158', 'Allan', 'McEwen', 'AMCEWEN', '011.44.1345.829268', str_to_date('2004-08-01', '%Y-%m-%d %Y%m%d'), 'SA_REP', '9000', '0.35', '146', '80');
INSERT INTO EMPLOYEES VALUES ('159', 'Lindsey', 'Smith', 'LSMITH', '011.44.1345.729268', str_to_date('2005-03-10', '%Y-%m-%d %Y%m%d'), 'SA_REP', '8000', '0.3', '146', '80');
INSERT INTO EMPLOYEES VALUES ('160', 'Louise', 'Doran', 'LDORAN', '011.44.1345.629268', str_to_date('2005-12-15', '%Y-%m-%d %Y%m%d'), 'SA_REP', '7500', '0.3', '146', '80');
INSERT INTO EMPLOYEES VALUES ('161', 'Sarath', 'Sewall', 'SSEWALL', '011.44.1345.529268', str_to_date('2006-11-03', '%Y-%m-%d %Y%m%d'), 'SA_REP', '7000', '0.25', '146', '80');
INSERT INTO EMPLOYEES VALUES ('162', 'Clara', 'Vishney', 'CVISHNEY', '011.44.1346.129268', str_to_date('2005-11-11', '%Y-%m-%d %Y%m%d'), 'SA_REP', '10500', '0.25', '147', '80');
INSERT INTO EMPLOYEES VALUES ('163', 'Danielle', 'Greene', 'DGREENE', '011.44.1346.229268', str_to_date('2007-03-19', '%Y-%m-%d %Y%m%d'), 'SA_REP', '9500', '0.15', '147', '80');
INSERT INTO EMPLOYEES VALUES ('164', 'Mattea', 'Marvins', 'MMARVINS', '011.44.1346.329268', str_to_date('2008-01-24', '%Y-%m-%d %Y%m%d'), 'SA_REP', '7200', '0.1', '147', '80');
INSERT INTO EMPLOYEES VALUES ('165', 'David', 'Lee', 'DLEE', '011.44.1346.529268', str_to_date('2008-02-23', '%Y-%m-%d %Y%m%d'), 'SA_REP', '6800', '0.1', '147', '80');
INSERT INTO EMPLOYEES VALUES ('166', 'Sundar', 'Ande', 'SANDE', '011.44.1346.629268', str_to_date('2008-03-24', '%Y-%m-%d %Y%m%d'), 'SA_REP', '6400', '0.1', '147', '80');
INSERT INTO EMPLOYEES VALUES ('167', 'Amit', 'Banda', 'ABANDA', '011.44.1346.729268', str_to_date('2008-04-21', '%Y-%m-%d %Y%m%d'), 'SA_REP', '6200', '0.1', '147', '80');
INSERT INTO EMPLOYEES VALUES ('168', 'Lisa', 'Ozer', 'LOZER', '011.44.1343.929268', str_to_date('2005-03-11', '%Y-%m-%d %Y%m%d'), 'SA_REP', '11500', '0.25', '148', '80');
INSERT INTO EMPLOYEES VALUES ('169', 'Harrison', 'Bloom', 'HBLOOM', '011.44.1343.829268', str_to_date('2006-03-23', '%Y-%m-%d %Y%m%d'), 'SA_REP', '10000', '0.2', '148', '80');
INSERT INTO EMPLOYEES VALUES ('170', 'Tayler', 'Fox', 'TFOX', '011.44.1343.729268', str_to_date('2006-01-24', '%Y-%m-%d %Y%m%d'), 'SA_REP', '9600', '0.2', '148', '80');
INSERT INTO EMPLOYEES VALUES ('171', 'William', 'Smith', 'WSMITH', '011.44.1343.629268', str_to_date('2007-02-23', '%Y-%m-%d %Y%m%d'), 'SA_REP', '7400', '0.15', '148', '80');
INSERT INTO EMPLOYEES VALUES ('172', 'Elizabeth', 'Bates', 'EBATES', '011.44.1343.529268', str_to_date('2007-03-24', '%Y-%m-%d %Y%m%d'), 'SA_REP', '7300', '0.15', '148', '80');
INSERT INTO EMPLOYEES VALUES ('173', 'Sundita', 'Kumar', 'SKUMAR', '011.44.1343.329268', str_to_date('2008-04-21', '%Y-%m-%d %Y%m%d'), 'SA_REP', '6100', '0.1', '148', '80');
INSERT INTO EMPLOYEES VALUES ('174', 'Ellen', 'Abel', 'EABEL', '011.44.1644.429267', str_to_date('2004-05-11', '%Y-%m-%d %Y%m%d'), 'SA_REP', '11000', '0.3', '149', '80');
INSERT INTO EMPLOYEES VALUES ('175', 'Alyssa', 'Hutton', 'AHUTTON', '011.44.1644.429266', str_to_date('2005-03-19', '%Y-%m-%d %Y%m%d'), 'SA_REP', '8800', '0.25', '149', '80');
INSERT INTO EMPLOYEES VALUES ('176', 'Jonathon', 'Taylor', 'JTAYLOR', '011.44.1644.429265', str_to_date('2006-03-24', '%Y-%m-%d %Y%m%d'), 'SA_REP', '8600', '0.2', '149', '80');
INSERT INTO EMPLOYEES VALUES ('177', 'Jack', 'Livingston', 'JLIVINGS', '011.44.1644.429264', str_to_date('2006-04-23', '%Y-%m-%d %Y%m%d'), 'SA_REP', '8400', '0.2', '149', '80');
INSERT INTO EMPLOYEES VALUES ('178', 'Kimberely', 'Grant', 'KGRANT', '011.44.1644.429263', str_to_date('2007-05-24', '%Y-%m-%d %Y%m%d'), 'SA_REP', '7000', '0.15', '149', NULL);
INSERT INTO EMPLOYEES VALUES ('179', 'Charles', 'Johnson', 'CJOHNSON', '011.44.1644.429262', str_to_date('2008-01-04', '%Y-%m-%d %Y%m%d'), 'SA_REP', '6200', '0.1', '149', '80');
INSERT INTO EMPLOYEES VALUES ('180', 'Winston', 'Taylor', 'WTAYLOR', '650.507.9876', str_to_date('2006-01-24', '%Y-%m-%d %Y%m%d'), 'SH_CLERK', '3200', NULL, '120', '50');
INSERT INTO EMPLOYEES VALUES ('181', 'Jean', 'Fleaur', 'JFLEAUR', '650.507.9877', str_to_date('2006-02-23', '%Y-%m-%d %Y%m%d'), 'SH_CLERK', '3100', NULL, '120', '50');
INSERT INTO EMPLOYEES VALUES ('182', 'Martha', 'Sullivan', 'MSULLIVA', '650.507.9878', str_to_date('2007-06-21', '%Y-%m-%d %Y%m%d'), 'SH_CLERK', '2500', NULL, '120', '50');
INSERT INTO EMPLOYEES VALUES ('183', 'Girard', 'Geoni', 'GGEONI', '650.507.9879', str_to_date('2008-02-03', '%Y-%m-%d %Y%m%d'), 'SH_CLERK', '2800', NULL, '120', '50');
INSERT INTO EMPLOYEES VALUES ('184', 'Nandita', 'Sarchand', 'NSARCHAN', '650.509.1876', str_to_date('2004-01-27', '%Y-%m-%d %Y%m%d'), 'SH_CLERK', '4200', NULL, '121', '50');
INSERT INTO EMPLOYEES VALUES ('185', 'Alexis', 'Bull', 'ABULL', '650.509.2876', str_to_date('2005-02-20', '%Y-%m-%d %Y%m%d'), 'SH_CLERK', '4100', NULL, '121', '50');
INSERT INTO EMPLOYEES VALUES ('186', 'Julia', 'Dellinger', 'JDELLING', '650.509.3876', str_to_date('2006-06-24', '%Y-%m-%d %Y%m%d'), 'SH_CLERK', '3400', NULL, '121', '50');
INSERT INTO EMPLOYEES VALUES ('187', 'Anthony', 'Cabrio', 'ACABRIO', '650.509.4876', str_to_date('2007-02-07', '%Y-%m-%d %Y%m%d'), 'SH_CLERK', '3000', NULL, '121', '50');
INSERT INTO EMPLOYEES VALUES ('188', 'Kelly', 'Chung', 'KCHUNG', '650.505.1876', str_to_date('2005-06-14', '%Y-%m-%d %Y%m%d'), 'SH_CLERK', '3800', NULL, '122', '50');
INSERT INTO EMPLOYEES VALUES ('189', 'Jennifer', 'Dilly', 'JDILLY', '650.505.2876', str_to_date('2005-08-13', '%Y-%m-%d %Y%m%d'), 'SH_CLERK', '3600', NULL, '122', '50');
INSERT INTO EMPLOYEES VALUES ('190', 'Timothy', 'Gates', 'TGATES', '650.505.3876', str_to_date('2006-07-11', '%Y-%m-%d %Y%m%d'), 'SH_CLERK', '2900', NULL, '122', '50');
INSERT INTO EMPLOYEES VALUES ('191', 'Randall', 'Perkins', 'RPERKINS', '650.505.4876', str_to_date('2007-12-19', '%Y-%m-%d %Y%m%d'), 'SH_CLERK', '2500', NULL, '122', '50');
INSERT INTO EMPLOYEES VALUES ('192', 'Sarah', 'Bell', 'SBELL', '650.501.1876', str_to_date('2004-02-04', '%Y-%m-%d %Y%m%d'), 'SH_CLERK', '4000', NULL, '123', '50');
INSERT INTO EMPLOYEES VALUES ('193', 'Britney', 'Everett', 'BEVERETT', '650.501.2876', str_to_date('2005-03-03', '%Y-%m-%d %Y%m%d'), 'SH_CLERK', '3900', NULL, '123', '50');
INSERT INTO EMPLOYEES VALUES ('194', 'Samuel', 'McCain', 'SMCCAIN', '650.501.3876', str_to_date('2006-07-01', '%Y-%m-%d %Y%m%d'), 'SH_CLERK', '3200', NULL, '123', '50');
INSERT INTO EMPLOYEES VALUES ('195', 'Vance', 'Jones', 'VJONES', '650.501.4876', str_to_date('2007-03-17', '%Y-%m-%d %Y%m%d'), 'SH_CLERK', '2800', NULL, '123', '50');
INSERT INTO EMPLOYEES VALUES ('196', 'Alana', 'Walsh', 'AWALSH', '650.507.9811', str_to_date('2006-04-24', '%Y-%m-%d %Y%m%d'), 'SH_CLERK', '3100', NULL, '124', '50');
INSERT INTO EMPLOYEES VALUES ('197', 'Kevin', 'Feeney', 'KFEENEY', '650.507.9822', str_to_date('2006-05-23', '%Y-%m-%d %Y%m%d'), 'SH_CLERK', '3000', NULL, '124', '50');
INSERT INTO EMPLOYEES VALUES ('198', 'Donald', 'OConnell', 'DOCONNEL', '650.507.9833', str_to_date('2007-06-21', '%Y-%m-%d %Y%m%d'), 'SH_CLERK', '2600', NULL, '124', '50');
INSERT INTO EMPLOYEES VALUES ('199', 'Douglas', 'Grant', 'DGRANT', '650.507.9844', str_to_date('2008-01-13', '%Y-%m-%d %Y%m%d'), 'SH_CLERK', '2600', NULL, '124', '50');
INSERT INTO EMPLOYEES VALUES ('200', 'Jennifer', 'Whalen', 'JWHALEN', '515.123.4444', str_to_date('2003-09-17', '%Y-%m-%d %Y%m%d'), 'AD_ASST', '4400', NULL, '101', '10');
INSERT INTO EMPLOYEES VALUES ('201', 'Michael', 'Hartstein', 'MHARTSTE', '515.123.5555', str_to_date('2004-02-17', '%Y-%m-%d %Y%m%d'), 'MK_MAN', '13000', NULL, '100', '20');
INSERT INTO EMPLOYEES VALUES ('202', 'Pat', 'Fay', 'PFAY', '603.123.6666', str_to_date('2005-08-17', '%Y-%m-%d %Y%m%d'), 'MK_REP', '6000', NULL, '201', '20');
INSERT INTO EMPLOYEES VALUES ('203', 'Susan', 'Mavris', 'SMAVRIS', '515.123.7777', str_to_date('2002-06-07', '%Y-%m-%d %Y%m%d'), 'HR_REP', '6500', NULL, '101', '40');
INSERT INTO EMPLOYEES VALUES ('204', 'Hermann', 'Baer', 'HBAER', '515.123.8888', str_to_date('2002-06-07', '%Y-%m-%d %Y%m%d'), 'PR_REP', '10000', NULL, '101', '70');
INSERT INTO EMPLOYEES VALUES ('205', 'Shelley', 'Higgins', 'SHIGGINS', '515.123.8080', str_to_date('2002-06-07', '%Y-%m-%d %Y%m%d'), 'AC_MGR', '12008', NULL, '101', '110');
INSERT INTO EMPLOYEES VALUES ('206', 'William', 'Gietz', 'WGIETZ', '515.123.8181', str_to_date('2002-06-07', '%Y-%m-%d %Y%m%d'), 'AC_ACCOUNT', '8300', NULL, '205', '110');

commit;



DROP TABLE if exists JOBS;
CREATE TABLE JOBS (
  JOB_ID VARCHAR(10 ) NOT NULL,
  JOB_TITLE VARCHAR(35 ) NOT NULL,
  MIN_SALARY int(6),
  MAX_SALARY int(6)
);

INSERT INTO JOBS VALUES ('AD_PRES', 'President', '20080', '40000');
INSERT INTO JOBS VALUES ('AD_VP', 'Administration Vice President', '15000', '30000');
INSERT INTO JOBS VALUES ('AD_ASST', 'Administration Assistant', '3000', '6000');
INSERT INTO JOBS VALUES ('FI_MGR', 'Finance Manager', '8200', '16000');
INSERT INTO JOBS VALUES ('FI_ACCOUNT', 'Accountant', '4200', '9000');
INSERT INTO JOBS VALUES ('AC_MGR', 'Accounting Manager', '8200', '16000');
INSERT INTO JOBS VALUES ('AC_ACCOUNT', 'Public Accountant', '4200', '9000');
INSERT INTO JOBS VALUES ('SA_MAN', 'Sales Manager', '10000', '20080');
INSERT INTO JOBS VALUES ('SA_REP', 'Sales Representative', '6000', '12008');
INSERT INTO JOBS VALUES ('PU_MAN', 'Purchasing Manager', '8000', '15000');
INSERT INTO JOBS VALUES ('PU_CLERK', 'Purchasing Clerk', '2500', '5500');
INSERT INTO JOBS VALUES ('ST_MAN', 'Stock Manager', '5500', '8500');
INSERT INTO JOBS VALUES ('ST_CLERK', 'Stock Clerk', '2008', '5000');
INSERT INTO JOBS VALUES ('SH_CLERK', 'Shipping Clerk', '2500', '5500');
INSERT INTO JOBS VALUES ('IT_PROG', 'Programmer', '4000', '10000');
INSERT INTO JOBS VALUES ('MK_MAN', 'Marketing Manager', '9000', '15000');
INSERT INTO JOBS VALUES ('MK_REP', 'Marketing Representative', '4000', '9000');
INSERT INTO JOBS VALUES ('HR_REP', 'Human Resources Representative', '4000', '9000');
INSERT INTO JOBS VALUES ('PR_REP', 'Public Relations Representative', '4500', '10500');

commit;

DROP TABLE if exists JOB_HISTORY;
CREATE TABLE JOB_HISTORY (
  EMPLOYEE_ID int(6) NOT NULL,
  START_DATE DATE NOT NULL,
  END_DATE DATE NOT NULL,
  JOB_ID VARCHAR(10) NOT NULL,
  DEPARTMENT_ID int(4)
);

INSERT INTO JOB_HISTORY VALUES ('102', str_to_date('2001-01-13', '%Y-%m-%d %Y%m%d'), str_to_date('2006-07-24', '%Y-%m-%d %Y%m%d'), 'IT_PROG', '60');
INSERT INTO JOB_HISTORY VALUES ('101', str_to_date('1997-09-21', '%Y-%m-%d %Y%m%d'), str_to_date('2001-10-27', '%Y-%m-%d %Y%m%d'), 'AC_ACCOUNT', '110');
INSERT INTO JOB_HISTORY VALUES ('101', str_to_date('2001-10-28', '%Y-%m-%d %Y%m%d'), str_to_date('2005-03-15', '%Y-%m-%d %Y%m%d'), 'AC_MGR', '110');
INSERT INTO JOB_HISTORY VALUES ('201', str_to_date('2004-02-17', '%Y-%m-%d %Y%m%d'), str_to_date('2007-12-19', '%Y-%m-%d %Y%m%d'), 'MK_REP', '20');
INSERT INTO JOB_HISTORY VALUES ('114', str_to_date('2006-03-24', '%Y-%m-%d %Y%m%d'), str_to_date('2007-12-31', '%Y-%m-%d %Y%m%d'), 'ST_CLERK', '50');
INSERT INTO JOB_HISTORY VALUES ('122', str_to_date('2007-01-01', '%Y-%m-%d %Y%m%d'), str_to_date('2007-12-31', '%Y-%m-%d %Y%m%d'), 'ST_CLERK', '50');
INSERT INTO JOB_HISTORY VALUES ('200', str_to_date('1995-09-17', '%Y-%m-%d %Y%m%d'), str_to_date('2001-06-17', '%Y-%m-%d %Y%m%d'), 'AD_ASST', '90');
INSERT INTO JOB_HISTORY VALUES ('176', str_to_date('2006-03-24', '%Y-%m-%d %Y%m%d'), str_to_date('2006-12-31', '%Y-%m-%d %Y%m%d'), 'SA_REP', '80');
INSERT INTO JOB_HISTORY VALUES ('176', str_to_date('2007-01-01', '%Y-%m-%d %Y%m%d'), str_to_date('2007-12-31', '%Y-%m-%d %Y%m%d'), 'SA_MAN', '80');
INSERT INTO JOB_HISTORY VALUES ('200', str_to_date('2002-07-01', '%Y-%m-%d %Y%m%d'), str_to_date('2006-12-31', '%Y-%m-%d %Y%m%d'), 'AC_ACCOUNT', '90');

commit;


DROP TABLE if exists LOCATIONS;
CREATE TABLE LOCATIONS (
  LOCATION_ID int(4) NOT NULL,
  STREET_ADDRESS VARCHAR(40),
  POSTAL_CODE VARCHAR(12),
  CITY VARCHAR(30) NOT NULL,
  STATE_PROVINCE VARCHAR(25),
  COUNTRY_ID CHAR(2)
);

INSERT INTO LOCATIONS VALUES ('1000', '1297 Via Cola di Rie', '00989', 'Roma', NULL, 'IT');
INSERT INTO LOCATIONS VALUES ('1100', '93091 Calle della Testa', '10934', 'Venice', NULL, 'IT');
INSERT INTO LOCATIONS VALUES ('1200', '2017 Shinjuku-ku', '1689', 'Tokyo', 'Tokyo Prefecture', 'JP');
INSERT INTO LOCATIONS VALUES ('1300', '9450 Kamiya-cho', '6823', 'Hiroshima', NULL, 'JP');
INSERT INTO LOCATIONS VALUES ('1400', '2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 'US');
INSERT INTO LOCATIONS VALUES ('1500', '2011 Interiors Blvd', '99236', 'South San Francisco', 'California', 'US');
INSERT INTO LOCATIONS VALUES ('1600', '2007 Zagora St', '50090', 'South Brunswick', 'New Jersey', 'US');
INSERT INTO LOCATIONS VALUES ('1700', '2004 Charade Rd', '98199', 'Seattle', 'Washington', 'US');
INSERT INTO LOCATIONS VALUES ('1800', '147 Spadina Ave', 'M5V 2L7', 'Toronto', 'Ontario', 'CA');
INSERT INTO LOCATIONS VALUES ('1900', '6092 Boxwood St', 'YSW 9T2', 'Whitehorse', 'Yukon', 'CA');
INSERT INTO LOCATIONS VALUES ('2000', '40-5-12 Laogianggen', '190518', 'Beijing', NULL, 'CN');
INSERT INTO LOCATIONS VALUES ('2100', '1298 Vileparle (E)', '490231', 'Bombay', 'Maharashtra', 'IN');
INSERT INTO LOCATIONS VALUES ('2200', '12-98 Victoria Street', '2901', 'Sydney', 'New South Wales', 'AU');
INSERT INTO LOCATIONS VALUES ('2300', '198 Clementi North', '540198', 'Singapore', NULL, 'SG');
INSERT INTO LOCATIONS VALUES ('2400', '8204 Arthur St', NULL, 'London', NULL, 'UK');
INSERT INTO LOCATIONS VALUES ('2500', 'Magdalen Centre, The Oxford Science Park', 'OX9 9ZB', 'Oxford', 'Oxford', 'UK');
INSERT INTO LOCATIONS VALUES ('2600', '9702 Chester Road', '09629850293', 'Stretford', 'Manchester', 'UK');
INSERT INTO LOCATIONS VALUES ('2700', 'Schwanthalerstr. 7031', '80925', 'Munich', 'Bavaria', 'DE');
INSERT INTO LOCATIONS VALUES ('2800', 'Rua Frei Caneca 1360 ', '01307-002', 'Sao Paulo', 'Sao Paulo', 'BR');
INSERT INTO LOCATIONS VALUES ('2900', '20 Rue des Corps-Saints', '1730', 'Geneva', 'Geneve', 'CH');
INSERT INTO LOCATIONS VALUES ('3000', 'Murtenstrasse 921', '3095', 'Bern', 'BE', 'CH');
INSERT INTO LOCATIONS VALUES ('3100', 'Pieter Breughelstraat 837', '3029SK', 'Utrecht', 'Utrecht', 'NL');
INSERT INTO LOCATIONS VALUES ('3200', 'Mariano Escobedo 9991', '11932', 'Mexico City', 'Distrito Federal,', 'MX');

commit;


DROP TABLE if exists REGIONS;
CREATE TABLE REGIONS (
  REGION_ID int NOT NULL,
  REGION_NAME VARCHAR(25 )
);

INSERT INTO REGIONS VALUES ('1', 'Europe');
INSERT INTO REGIONS VALUES ('2', 'Americas');
INSERT INTO REGIONS VALUES ('3', 'Asia');
INSERT INTO REGIONS VALUES ('4', 'Middle East and Africa');

commit;

