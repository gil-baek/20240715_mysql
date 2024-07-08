/*
 Navicat Premium Data Transfer

 Source Server         : scott
 Source Server Type    : Oracle
 Source Server Version : 110200
 Source Host           : localhost:1521
 Source Schema         : SCOTT

 Target Server Type    : Oracle
 Target Server Version : 110200
 File Encoding         : 65001

 Date: 08/07/2024 12:13:05
*/


-- ----------------------------
-- Table structure for BONUS
-- ----------------------------
DROP TABLE "SCOTT"."BONUS";
CREATE TABLE "SCOTT"."BONUS" (
  "ENAME" VARCHAR2(10 BYTE),
  "JOB" VARCHAR2(9 BYTE),
  "SAL" NUMBER,
  "COMM" NUMBER
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  FREELISTS 1
  FREELIST GROUPS 1
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of BONUS
-- ----------------------------

-- ----------------------------
-- Table structure for DEPARTMENT
-- ----------------------------
DROP TABLE "SCOTT"."DEPARTMENT";
CREATE TABLE "SCOTT"."DEPARTMENT" (
  "DEPTNO" NUMBER(3,0) NOT NULL,
  "DNAME" VARCHAR2(50 BYTE) NOT NULL,
  "PART" NUMBER(3,0),
  "BUILD" VARCHAR2(30 BYTE)
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of DEPARTMENT
-- ----------------------------
INSERT INTO "SCOTT"."DEPARTMENT" VALUES ('101', 'Computer Engineering', '100', 'Information Bldg');
INSERT INTO "SCOTT"."DEPARTMENT" VALUES ('102', 'Multimedia Engineering', '100', 'Multimedia Bldg');
INSERT INTO "SCOTT"."DEPARTMENT" VALUES ('103', 'Software Engineering', '100', 'Software Bldg');
INSERT INTO "SCOTT"."DEPARTMENT" VALUES ('201', 'Electronic Engineering', '200', 'Electronic Control Bldg');
INSERT INTO "SCOTT"."DEPARTMENT" VALUES ('202', 'Mechanical Engineering', '200', 'Machining Experiment Bldg');
INSERT INTO "SCOTT"."DEPARTMENT" VALUES ('203', 'Chemical Engineering', '200', 'Chemical Experiment Bldg');
INSERT INTO "SCOTT"."DEPARTMENT" VALUES ('301', 'Library and Information science', '300', 'College of Liberal Arts');
INSERT INTO "SCOTT"."DEPARTMENT" VALUES ('100', 'Department of Computer Information', '10', NULL);
INSERT INTO "SCOTT"."DEPARTMENT" VALUES ('200', 'Department of Mechatronics', '10', NULL);
INSERT INTO "SCOTT"."DEPARTMENT" VALUES ('300', 'Department of Humanities and Society', '20', NULL);
INSERT INTO "SCOTT"."DEPARTMENT" VALUES ('10', 'College of Engineering', NULL, NULL);
INSERT INTO "SCOTT"."DEPARTMENT" VALUES ('20', 'College of Liberal Arts', NULL, NULL);

-- ----------------------------
-- Table structure for DEPT
-- ----------------------------
DROP TABLE "SCOTT"."DEPT";
CREATE TABLE "SCOTT"."DEPT" (
  "DEPTNO" NUMBER(2,0) NOT NULL,
  "DNAME" VARCHAR2(14 BYTE),
  "LOC" VARCHAR2(13 BYTE)
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  FREELISTS 1
  FREELIST GROUPS 1
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of DEPT
-- ----------------------------
INSERT INTO "SCOTT"."DEPT" VALUES ('10', 'ACCOUNTING', 'NEW YORK');
INSERT INTO "SCOTT"."DEPT" VALUES ('20', 'RESEARCH', 'DALLAS');
INSERT INTO "SCOTT"."DEPT" VALUES ('30', 'SALES', 'CHICAGO');
INSERT INTO "SCOTT"."DEPT" VALUES ('40', 'OPERATIONS', 'BOSTON');

-- ----------------------------
-- Table structure for EMP
-- ----------------------------
DROP TABLE "SCOTT"."EMP";
CREATE TABLE "SCOTT"."EMP" (
  "EMPNO" NUMBER(4,0) NOT NULL,
  "ENAME" VARCHAR2(10 BYTE),
  "JOB" VARCHAR2(9 BYTE),
  "MGR" NUMBER(4,0),
  "HIREDATE" DATE,
  "SAL" NUMBER(7,2),
  "COMM" NUMBER(7,2),
  "DEPTNO" NUMBER(2,0)
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  FREELISTS 1
  FREELIST GROUPS 1
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of EMP
-- ----------------------------
INSERT INTO "SCOTT"."EMP" VALUES ('7369', 'SMITH', 'CLERK', '7902', TO_DATE('1980-12-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '800', NULL, '20');
INSERT INTO "SCOTT"."EMP" VALUES ('7499', 'ALLEN', 'SALESMAN', '7698', TO_DATE('1981-02-20 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1600', '300', '30');
INSERT INTO "SCOTT"."EMP" VALUES ('7521', 'WARD', 'SALESMAN', '7698', TO_DATE('1981-02-22 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1250', '500', '30');
INSERT INTO "SCOTT"."EMP" VALUES ('7566', 'JONES', 'MANAGER', '7839', TO_DATE('1981-04-02 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '2975', NULL, '20');
INSERT INTO "SCOTT"."EMP" VALUES ('7654', 'MARTIN', 'SALESMAN', '7698', TO_DATE('1981-09-28 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1250', '1400', '30');
INSERT INTO "SCOTT"."EMP" VALUES ('7698', 'BLAKE', 'MANAGER', '7839', TO_DATE('1981-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '2850', NULL, '30');
INSERT INTO "SCOTT"."EMP" VALUES ('7782', 'CLARK', 'MANAGER', '7839', TO_DATE('1981-06-09 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '2450', NULL, '10');
INSERT INTO "SCOTT"."EMP" VALUES ('7788', 'SCOTT', 'ANALYST', '7566', TO_DATE('1987-04-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '3000', NULL, '20');
INSERT INTO "SCOTT"."EMP" VALUES ('7839', 'KING', 'PRESIDENT', NULL, TO_DATE('1981-11-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '5000', NULL, '10');
INSERT INTO "SCOTT"."EMP" VALUES ('7844', 'TURNER', 'SALESMAN', '7698', TO_DATE('1981-09-08 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1500', '0', '30');
INSERT INTO "SCOTT"."EMP" VALUES ('7900', 'JAMES', 'CLERK', '7698', TO_DATE('1981-12-03 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '950', NULL, '30');
INSERT INTO "SCOTT"."EMP" VALUES ('7902', 'FORD', 'ANALYST', '7566', TO_DATE('1981-12-03 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '3000', NULL, '20');
INSERT INTO "SCOTT"."EMP" VALUES ('7934', 'MILLER', 'CLERK', '7782', TO_DATE('1982-01-23 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1300', NULL, '10');

-- ----------------------------
-- Table structure for MONTH_SALARY
-- ----------------------------
DROP TABLE "SCOTT"."MONTH_SALARY";
CREATE TABLE "SCOTT"."MONTH_SALARY" (
  "MAGAM_DATE" DATE NOT NULL,
  "DEPARTMENT_ID" NUMBER,
  "EMP_COUNT" NUMBER,
  "TOTAL_SALARY" NUMBER,
  "AVERAGE_SALARY" NUMBER
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  FREELISTS 1
  FREELIST GROUPS 1
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of MONTH_SALARY
-- ----------------------------
INSERT INTO "SCOTT"."MONTH_SALARY" VALUES (TO_DATE('2024-03-31 18:52:27', 'SYYYY-MM-DD HH24:MI:SS'), '100', '6', '51608', '8601');
INSERT INTO "SCOTT"."MONTH_SALARY" VALUES (TO_DATE('2024-03-31 18:52:27', 'SYYYY-MM-DD HH24:MI:SS'), '30', '6', '24900', '4150');
INSERT INTO "SCOTT"."MONTH_SALARY" VALUES (TO_DATE('2024-03-31 18:52:27', 'SYYYY-MM-DD HH24:MI:SS'), NULL, '0', NULL, NULL);
INSERT INTO "SCOTT"."MONTH_SALARY" VALUES (TO_DATE('2024-03-31 18:52:27', 'SYYYY-MM-DD HH24:MI:SS'), '90', '3', '58000', '19333');
INSERT INTO "SCOTT"."MONTH_SALARY" VALUES (TO_DATE('2024-03-31 18:52:27', 'SYYYY-MM-DD HH24:MI:SS'), '20', '2', '19000', '9500');
INSERT INTO "SCOTT"."MONTH_SALARY" VALUES (TO_DATE('2024-03-31 18:52:27', 'SYYYY-MM-DD HH24:MI:SS'), '70', '1', '10000', '10000');
INSERT INTO "SCOTT"."MONTH_SALARY" VALUES (TO_DATE('2024-03-31 18:52:27', 'SYYYY-MM-DD HH24:MI:SS'), '110', '2', '20308', '10154');
INSERT INTO "SCOTT"."MONTH_SALARY" VALUES (TO_DATE('2024-03-31 18:52:27', 'SYYYY-MM-DD HH24:MI:SS'), '50', '45', '156400', '3476');
INSERT INTO "SCOTT"."MONTH_SALARY" VALUES (TO_DATE('2024-03-31 18:52:27', 'SYYYY-MM-DD HH24:MI:SS'), '80', '34', '304500', '8956');
INSERT INTO "SCOTT"."MONTH_SALARY" VALUES (TO_DATE('2024-03-31 18:52:27', 'SYYYY-MM-DD HH24:MI:SS'), '40', '1', '6500', '6500');
INSERT INTO "SCOTT"."MONTH_SALARY" VALUES (TO_DATE('2024-03-31 18:52:27', 'SYYYY-MM-DD HH24:MI:SS'), '60', '5', '28800', '5760');
INSERT INTO "SCOTT"."MONTH_SALARY" VALUES (TO_DATE('2024-03-31 18:52:27', 'SYYYY-MM-DD HH24:MI:SS'), '10', '1', '4400', '4400');

-- ----------------------------
-- Table structure for PRODUCT
-- ----------------------------
DROP TABLE "SCOTT"."PRODUCT";
CREATE TABLE "SCOTT"."PRODUCT" (
  "PRODUCT_ID" NUMBER NOT NULL,
  "PROCUCT_NAME" VARCHAR2(50 BYTE),
  "PRICE" NUMBER DEFAULT 0,
  "DECRIPTION" CLOB,
  "PICTURE_URL" VARCHAR2(500 BYTE)
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  FREELISTS 1
  FREELIST GROUPS 1
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of PRODUCT
-- ----------------------------

-- ----------------------------
-- Table structure for PROFESSOR
-- ----------------------------
DROP TABLE "SCOTT"."PROFESSOR";
CREATE TABLE "SCOTT"."PROFESSOR" (
  "PROFNO" NUMBER(4,0) NOT NULL,
  "NAME" VARCHAR2(20 BYTE) NOT NULL,
  "ID" VARCHAR2(15 BYTE) NOT NULL,
  "POSITION" VARCHAR2(30 BYTE) NOT NULL,
  "PAY" NUMBER(3,0) NOT NULL,
  "HIREDATE" DATE NOT NULL,
  "BONUS" NUMBER(4,0),
  "DEPTNO" NUMBER(3,0),
  "EMAIL" VARCHAR2(50 BYTE),
  "HPAGE" VARCHAR2(50 BYTE)
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of PROFESSOR
-- ----------------------------
INSERT INTO "SCOTT"."PROFESSOR" VALUES ('1001', 'Audie Murphy', 'Murphy', 'a full professor', '550', TO_DATE('1980-06-23 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '100', '101', 'captain@abc.net', 'http://www.abc.net');
INSERT INTO "SCOTT"."PROFESSOR" VALUES ('1002', 'Angela Bassett', 'Bassett', 'assistant professor', '380', TO_DATE('1987-01-30 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '60', '101', 'sweety@abc.net', 'http://www.abc.net');
INSERT INTO "SCOTT"."PROFESSOR" VALUES ('1003', 'Jessica Lange', 'Lange', 'instructor', '270', TO_DATE('1998-03-22 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, '101', 'pman@power.com', 'http://www.power.com');
INSERT INTO "SCOTT"."PROFESSOR" VALUES ('2001', 'Winona Ryder', 'Ryder', 'instructor', '250', TO_DATE('2001-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, '102', 'lamb1@hamail.net', NULL);
INSERT INTO "SCOTT"."PROFESSOR" VALUES ('2002', 'Michelle Pfeiffer', 'Pfeiffer', 'assistant professor', '350', TO_DATE('1985-11-30 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '80', '102', 'number1@naver.com', 'http://num1.naver.com');
INSERT INTO "SCOTT"."PROFESSOR" VALUES ('2003', 'Whoopi Goldberg', 'Goldberg', 'a full professor', '490', TO_DATE('1982-04-29 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '90', '102', 'bdragon@naver.com', NULL);
INSERT INTO "SCOTT"."PROFESSOR" VALUES ('3001', 'Emma Thompson', 'Thompson', 'a full professor', '530', TO_DATE('1981-10-23 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '110', '103', 'angel1004@hanmir.com', NULL);
INSERT INTO "SCOTT"."PROFESSOR" VALUES ('3002', 'Julia Roberts', 'Roberts', 'assistant professor', '330', TO_DATE('1997-07-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '50', '103', 'naone10@empal.com', NULL);
INSERT INTO "SCOTT"."PROFESSOR" VALUES ('3003', 'Sharon Stone', 'Stone', 'instructor', '290', TO_DATE('2002-02-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, '103', 'only_u@abc.com', NULL);
INSERT INTO "SCOTT"."PROFESSOR" VALUES ('4001', 'Meryl Streep', 'Streep', 'a full professor', '570', TO_DATE('1981-10-23 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '130', '201', 'chebin@daum.net', NULL);
INSERT INTO "SCOTT"."PROFESSOR" VALUES ('4002', 'Susan Sarandon', 'Sarandon', 'assistant professor', '330', TO_DATE('2009-08-30 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, '201', 'gogogo@def.com', NULL);
INSERT INTO "SCOTT"."PROFESSOR" VALUES ('4003', 'Nicole Kidman', 'Kidman', 'assistant professor', '310', TO_DATE('1999-12-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '50', '202', 'mypride@hanmail.net', NULL);
INSERT INTO "SCOTT"."PROFESSOR" VALUES ('4004', 'Holly Hunter', 'Hunter', 'instructor', '260', TO_DATE('2009-01-28 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, '202', 'ironman@naver.com', NULL);
INSERT INTO "SCOTT"."PROFESSOR" VALUES ('4005', 'Meg Ryan', 'Ryan', 'a full professor', '500', TO_DATE('1985-09-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '80', '203', 'standkang@naver.com', NULL);
INSERT INTO "SCOTT"."PROFESSOR" VALUES ('4006', 'Andie Macdowell', 'Macdowell', 'instructor', '220', TO_DATE('2010-06-28 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, '301', 'napeople@jass.com', NULL);
INSERT INTO "SCOTT"."PROFESSOR" VALUES ('4007', 'Jodie Foster', 'Foster', 'assistant professor', '290', TO_DATE('2001-05-23 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '30', '301', 'silver-her@daum.net', NULL);

-- ----------------------------
-- Table structure for SALGRADE
-- ----------------------------
DROP TABLE "SCOTT"."SALGRADE";
CREATE TABLE "SCOTT"."SALGRADE" (
  "GRADE" NUMBER,
  "LOSAL" NUMBER,
  "HISAL" NUMBER
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  FREELISTS 1
  FREELIST GROUPS 1
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of SALGRADE
-- ----------------------------
INSERT INTO "SCOTT"."SALGRADE" VALUES ('1', '700', '1200');
INSERT INTO "SCOTT"."SALGRADE" VALUES ('2', '1201', '1400');
INSERT INTO "SCOTT"."SALGRADE" VALUES ('3', '1401', '2000');
INSERT INTO "SCOTT"."SALGRADE" VALUES ('4', '2001', '3000');
INSERT INTO "SCOTT"."SALGRADE" VALUES ('5', '3001', '9999');

-- ----------------------------
-- Table structure for STUDENT
-- ----------------------------
DROP TABLE "SCOTT"."STUDENT";
CREATE TABLE "SCOTT"."STUDENT" (
  "STUDNO" NUMBER(4,0) NOT NULL,
  "NAME" VARCHAR2(30 BYTE) NOT NULL,
  "ID" VARCHAR2(20 BYTE) NOT NULL,
  "GRADE" NUMBER,
  "JUMIN" CHAR(13 BYTE) NOT NULL,
  "BIRTHDAY" DATE,
  "TEL" VARCHAR2(15 BYTE),
  "HEIGHT" NUMBER(4,0),
  "WEIGHT" NUMBER(3,0),
  "DEPTNO1" NUMBER(3,0),
  "DEPTNO2" NUMBER(3,0),
  "PROFNO" NUMBER(4,0)
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of STUDENT
-- ----------------------------
INSERT INTO "SCOTT"."STUDENT" VALUES ('9411', 'James Seo', '75true', '4', '7510231901813', TO_DATE('1975-10-23 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '055)381-2158', '180', '72', '101', '201', '1001');
INSERT INTO "SCOTT"."STUDENT" VALUES ('9412', 'Rene Russo', 'Russo', '4', '7502241128467', TO_DATE('1975-02-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '051)426-1700', '172', '64', '102', NULL, '2001');
INSERT INTO "SCOTT"."STUDENT" VALUES ('9413', 'Sandra Bullock', 'Bullock', '4', '7506152123648', TO_DATE('1975-06-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '053)266-8947', '168', '52', '103', '203', '3002');
INSERT INTO "SCOTT"."STUDENT" VALUES ('9414', 'Demi Moore', 'Moore', '4', '7512251063421', TO_DATE('1975-12-25 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '02)6255-9875', '177', '83', '201', NULL, '4001');
INSERT INTO "SCOTT"."STUDENT" VALUES ('9415', 'Danny Glover', 'Glover', '4', '7503031639826', TO_DATE('1975-03-03 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '031)740-6388', '182', '70', '202', NULL, '4003');
INSERT INTO "SCOTT"."STUDENT" VALUES ('9511', 'Billy Crystal', 'Crystal', '3', '7601232186327', TO_DATE('1976-01-23 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '055)333-6328', '164', '48', '101', NULL, '1002');
INSERT INTO "SCOTT"."STUDENT" VALUES ('9512', 'Nicholas Cage', 'Cage', '3', '7604122298371', TO_DATE('1976-04-12 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '051)418-9627', '161', '42', '102', '201', '2002');
INSERT INTO "SCOTT"."STUDENT" VALUES ('9513', 'Micheal Keaton', 'Keaton', '3', '7609112118379', TO_DATE('1976-09-11 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '051)724-9618', '177', '55', '202', NULL, '4003');
INSERT INTO "SCOTT"."STUDENT" VALUES ('9514', 'Bill Murray', 'Murray', '3', '7601202378641', TO_DATE('1976-01-20 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '055)296-3784', '160', '58', '301', '101', '4007');
INSERT INTO "SCOTT"."STUDENT" VALUES ('9515', 'Macaulay Culkin', 'Culkin', '3', '7610122196482', TO_DATE('1976-10-12 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '02)312-9838', '171', '54', '201', NULL, '4001');
INSERT INTO "SCOTT"."STUDENT" VALUES ('9611', 'Richard Dreyfus', 'Dreyfus', '2', '7711291186223', TO_DATE('1977-11-29 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '02)6788-4861', '182', '72', '101', NULL, '1002');
INSERT INTO "SCOTT"."STUDENT" VALUES ('9612', 'Tim Robbins', 'Robbins', '2', '7704021358674', TO_DATE('1977-04-02 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '055)488-2998', '171', '70', '102', NULL, '2001');
INSERT INTO "SCOTT"."STUDENT" VALUES ('9613', 'Wesley Snipes', 'Snipes', '2', '7709131276431', TO_DATE('1977-09-13 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '053)736-4981', '175', '82', '201', NULL, '4002');
INSERT INTO "SCOTT"."STUDENT" VALUES ('9614', 'Steve Martin', 'Martin', '2', '7702261196365', TO_DATE('1977-02-26 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '02)6175-3945', '166', '51', '201', NULL, '4003');
INSERT INTO "SCOTT"."STUDENT" VALUES ('9615', 'Daniel Day-Lewis', 'Day-Lewis', '2', '7712141254963', TO_DATE('1977-12-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '051)785-6984', '184', '62', '301', NULL, '4007');
INSERT INTO "SCOTT"."STUDENT" VALUES ('9711', 'Danny Devito', 'Devito', '1', '7808192157498', TO_DATE('1978-08-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '055)278-3649', '162', '48', '101', NULL, NULL);
INSERT INTO "SCOTT"."STUDENT" VALUES ('9712', 'Sean Connery', 'Connery', '1', '7801051776346', TO_DATE('1978-01-05 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '02)381-5440', '175', '63', '201', NULL, NULL);
INSERT INTO "SCOTT"."STUDENT" VALUES ('9713', 'Christian Slater', 'Slater', '1', '7808091786954', TO_DATE('1978-08-09 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '031)345-5677', '173', '69', '201', NULL, NULL);
INSERT INTO "SCOTT"."STUDENT" VALUES ('9714', 'Charlie Sheen', 'Sheen', '1', '7803241981987', TO_DATE('1978-03-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '055)423-9870', '179', '81', '102', NULL, NULL);
INSERT INTO "SCOTT"."STUDENT" VALUES ('9715', 'Anthony Hopkins', 'Hopkins', '1', '7802232116784', TO_DATE('1978-02-23 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '02)6122-2345', '163', '51', '103', NULL, NULL);

-- ----------------------------
-- Function structure for PRO_01
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "SCOTT"."PRO_01" AS
begin
  -- dbms_output.put_line('Hello World!!');
  --1) 기존자료삭제
	delete from month_salary;

	-- 2) 마감테이블초기화
	insert into month_salary
	select last_day(sysdate)
			 , department_id
			 , 0
			 , 0
			 , 0	
		from hr.employees
	 group by department_id;
	 
	-- 3) 마감작업
	update month_salary sal
		 set (emp_count, total_salary, average_salary)
				 = (select count(*)
								 , sum(emp.salary)
								 , round(avg(emp.salary), 0)
							from hr.employees emp
						 where sal.department_id = emp.department_id); 

end pro_01;
/

-- ----------------------------
-- Function structure for PRO_02
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "SCOTT"."PRO_02" AS
begin
	-- 실행부
	v_counter := 10;
	v_counter :=  v_counter + 10;
	dbms_output.put_line(v_counter);
exception when others then
	-- 예외부
	dbms_output.put_line('예외가 발생했습니다!!');
end pro_02;
/

-- ----------------------------
-- Function structure for PRO_03
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "SCOTT"."PRO_03" AS
begin
	isSuccess := true; -- true or false
	
	if isSuccess
	then dbms_output.put_line('업무처리를 성공했습니다!!');
	else dbms_output.put_line('업무처리를 실패했습니다!!');
	end if;
	
end pro_03;
/

-- ----------------------------
-- Function structure for PRO_04
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "SCOTT"."PRO_04" AS
begin
	for i in 1..10 loop
		dbms_output.put_line('i = ' || i);
	end loop;
end pro_04;
/

-- ----------------------------
-- Function structure for PRO_05
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "SCOTT"."PRO_05" AS
begin
	
-- 	v_empno := 10;
-- 	v_ename := '홍길동';
-- 	v_sal   := 1000;
	select empno, ename, sal 
	  into v_empno, v_ename, v_sal 
	  from emp where ename = 'SMITH';
	
	dbms_output.put_line(v_empno || ',' || v_ename  || ',' || v_sal);
end pro_05;
/

-- ----------------------------
-- Function structure for PRO_06
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "SCOTT"."PRO_06" AS
begin

	select * 
	  into v_emp
	  from emp where ename = 'SMITH';
	
	dbms_output.put_line(v_emp.empno || ',' || v_emp.ename  || ',' || v_emp.hiredate);
end pro_06;
/

-- ----------------------------
-- Function structure for PRO_07
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "SCOTT"."PRO_07" AS
begin

	select empno, ename, hiredate
	  into v_emp
 	  from emp where ename = 'SMITH';
	
	dbms_output.put_line(v_emp.v_empno || ',' || v_emp.v_ename  || ',' || v_emp.v_hiredate);

end pro_07;
/

-- ----------------------------
-- Function structure for PRO_08
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "SCOTT"."PRO_08" AS
begin
   	 
	 for rec_name in (select ename from emp where deptno = 10 order by ename) loop
			idx := idx + 1;
			v_tbl_ename(idx) := rec_name.ename; -- rec_name은 %rowtype
	 end loop;
	 
	 for i in 1..idx loop
	    dbms_output.put_line('사원이름 = ' || v_tbl_ename(i));	 
	 end loop;
	 
end pro_08;
/

-- ----------------------------
-- Function structure for PRO_09
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "SCOTT"."PRO_09" AS
begin
	for rec_name_and_job in (select ename, job from emp where deptno = 10) loop
			idx := idx + 1;
			v_name_table(idx) := rec_name_and_job.ename;
			v_job_table(idx)  := rec_name_and_job.job;
	end loop;
	
	for i in 1..idx loop
		dbms_output.put_line('사원이름 = ' || v_name_table(i) || ', ' ||
			'직급 = ' || v_job_table(i));	 
	end loop;
	
end pro_09;
/

-- ----------------------------
-- Primary Key structure for table DEPARTMENT
-- ----------------------------
ALTER TABLE "SCOTT"."DEPARTMENT" ADD CONSTRAINT "SYS_C007007" PRIMARY KEY ("DEPTNO");

-- ----------------------------
-- Checks structure for table DEPARTMENT
-- ----------------------------
ALTER TABLE "SCOTT"."DEPARTMENT" ADD CONSTRAINT "SYS_C007006" CHECK ("DNAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table DEPT
-- ----------------------------
ALTER TABLE "SCOTT"."DEPT" ADD CONSTRAINT "PK_DEPT" PRIMARY KEY ("DEPTNO");

-- ----------------------------
-- Primary Key structure for table EMP
-- ----------------------------
ALTER TABLE "SCOTT"."EMP" ADD CONSTRAINT "PK_EMP" PRIMARY KEY ("EMPNO");

-- ----------------------------
-- Checks structure for table MONTH_SALARY
-- ----------------------------
ALTER TABLE "SCOTT"."MONTH_SALARY" ADD CONSTRAINT "SYS_C007019" CHECK ("MAGAM_DATE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table PRODUCT
-- ----------------------------
ALTER TABLE "SCOTT"."PRODUCT" ADD CONSTRAINT "SYS_C007064" PRIMARY KEY ("PRODUCT_ID");

-- ----------------------------
-- Primary Key structure for table PROFESSOR
-- ----------------------------
ALTER TABLE "SCOTT"."PROFESSOR" ADD CONSTRAINT "SYS_C007005" PRIMARY KEY ("PROFNO");

-- ----------------------------
-- Checks structure for table PROFESSOR
-- ----------------------------
ALTER TABLE "SCOTT"."PROFESSOR" ADD CONSTRAINT "SYS_C007000" CHECK ("NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "SCOTT"."PROFESSOR" ADD CONSTRAINT "SYS_C007001" CHECK ("ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "SCOTT"."PROFESSOR" ADD CONSTRAINT "SYS_C007002" CHECK ("POSITION" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "SCOTT"."PROFESSOR" ADD CONSTRAINT "SYS_C007003" CHECK ("PAY" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "SCOTT"."PROFESSOR" ADD CONSTRAINT "SYS_C007004" CHECK ("HIREDATE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table STUDENT
-- ----------------------------
ALTER TABLE "SCOTT"."STUDENT" ADD CONSTRAINT "SYS_C007012" PRIMARY KEY ("STUDNO");

-- ----------------------------
-- Uniques structure for table STUDENT
-- ----------------------------
ALTER TABLE "SCOTT"."STUDENT" ADD CONSTRAINT "SYS_C007013" UNIQUE ("ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Checks structure for table STUDENT
-- ----------------------------
ALTER TABLE "SCOTT"."STUDENT" ADD CONSTRAINT "SYS_C007008" CHECK ("NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "SCOTT"."STUDENT" ADD CONSTRAINT "SYS_C007009" CHECK ("ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "SCOTT"."STUDENT" ADD CONSTRAINT "SYS_C007010" CHECK ("JUMIN" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "SCOTT"."STUDENT" ADD CONSTRAINT "SYS_C007011" CHECK (grade between 1 and 6) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table EMP
-- ----------------------------
ALTER TABLE "SCOTT"."EMP" ADD CONSTRAINT "FK_DEPTNO" FOREIGN KEY ("DEPTNO") REFERENCES "SCOTT"."DEPT" ("DEPTNO") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
