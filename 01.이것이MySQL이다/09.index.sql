
/* 09장 : index */
-- 9.1 인덱스의 개념
-- 장점 : ... 
-- 단점 : ... 

-- 9.2 인덱스의 종류와 자동생성 
-- 9.2.1 인덱스의 종류
-- 클러스터형 인덱스 : 내용 자체가 순서대로 정렬되어 있는 형태
-- 보조인덱스 : 인덱스가 별도로 있고 그 인덱스로 데이터를 검색하는 형태 

-- 9.2.2 자동으로 생성되는 인덱스

CREATE TABLE usertbl 
( userID  CHAR(8) NOT NULL PRIMARY KEY, 
  name    VARCHAR(10) NOT NULL, 
  birthYear   INT NOT NULL,  
  addr	  CHAR(2) NOT NULL,
  mobile1	CHAR(3) NULL, 
  mobile2   CHAR(8) NULL, 
  height    SMALLINT NULL, 
  mDate    DATE NULL 
);

-- <실습 1> --

USE sqldb;
CREATE TABLE  tbl1
	(	a INT PRIMARY KEY,
		b INT,
		c INT
	);

SHOW INDEX FROM tbl1;

CREATE TABLE  tbl2
	(	a INT PRIMARY KEY,
		b INT UNIQUE,
		c INT UNIQUE,
		d INT
	);
SHOW INDEX FROM tbl2;

CREATE TABLE  tbl3
	(	a INT UNIQUE,
		b INT UNIQUE,
		c INT UNIQUE,
		d INT
	);
SHOW INDEX FROM tbl3;

CREATE TABLE  tbl4
	(	a INT UNIQUE NOT NULL,
		b INT UNIQUE ,
		c INT UNIQUE,
		d INT
	);
SHOW INDEX FROM tbl4;

CREATE TABLE  tbl5
	(	a INT UNIQUE NOT NULL,
		b INT UNIQUE ,
		c INT UNIQUE,
		d INT PRIMARY KEY
	);
SHOW INDEX FROM tbl5;

CREATE DATABASE IF NOT EXISTS testdb;
USE testdb;
DROP TABLE IF EXISTS usertbl;
CREATE TABLE usertbl 
( userID  char(8) NOT NULL PRIMARY KEY, 
  name    varchar(10) NOT NULL,
  birthYear   int NOT NULL,
  addr	  nchar(2) NOT NULL 
 );


INSERT INTO usertbl VALUES('LSG', '이승기', 1987, '서울');
INSERT INTO usertbl VALUES('KBS', '김범수', 1979, '경남');
INSERT INTO usertbl VALUES('KKH', '김경호', 1971, '전남');
INSERT INTO usertbl VALUES('JYP', '조용필', 1950, '경기');
INSERT INTO usertbl VALUES('SSK', '성시경', 1979, '서울');
SELECT * FROM usertbl;

ALTER TABLE usertbl DROP PRIMARY KEY ;
ALTER TABLE usertbl 
	ADD CONSTRAINT pk_name PRIMARY KEY(name);
SELECT * FROM usertbl;

-- </실습 1> --

CREATE DATABASE IF NOT EXISTS testdb;
USE testdb;
DROP TABLE IF EXISTS clustertbl;
CREATE TABLE clustertbl -- Cluster Table 약자
( userID  CHAR(8) ,
  name    VARCHAR(10) 
);
INSERT INTO clustertbl VALUES('LSG', '이승기');
INSERT INTO clustertbl VALUES('KBS', '김범수');
INSERT INTO clustertbl VALUES('KKH', '김경호');
INSERT INTO clustertbl VALUES('JYP', '조용필');
INSERT INTO clustertbl VALUES('SSK', '성시경');
INSERT INTO clustertbl VALUES('LJB', '임재범');
INSERT INTO clustertbl VALUES('YJS', '윤종신');
INSERT INTO clustertbl VALUES('EJW', '은지원');
INSERT INTO clustertbl VALUES('JKW', '조관우');
INSERT INTO clustertbl VALUES('BBK', '바비킴');

SELECT * FROM clustertbl;

ALTER TABLE clustertbl
	ADD CONSTRAINT PK_clustertbl_userID
		PRIMARY KEY (userID);

SELECT * FROM clustertbl;

CREATE DATABASE IF NOT EXISTS testdb;
USE testdb;
DROP TABLE IF EXISTS secondarytbl;
CREATE TABLE secondarytbl -- Secondary Table 약자
( userID  CHAR(8),
  name    VARCHAR(10)
);
INSERT INTO secondarytbl VALUES('LSG', '이승기');
INSERT INTO secondarytbl VALUES('KBS', '김범수');
INSERT INTO secondarytbl VALUES('KKH', '김경호');
INSERT INTO secondarytbl VALUES('JYP', '조용필');
INSERT INTO secondarytbl VALUES('SSK', '성시경');
INSERT INTO secondarytbl VALUES('LJB', '임재범');
INSERT INTO secondarytbl VALUES('YJS', '윤종신');
INSERT INTO secondarytbl VALUES('EJW', '은지원');
INSERT INTO secondarytbl VALUES('JKW', '조관우');
INSERT INTO secondarytbl VALUES('BBK', '바비킴');


ALTER TABLE secondarytbl
	ADD CONSTRAINT UK_secondarytbl_userID
		UNIQUE (userID);

SELECT * FROM secondarytbl;

INSERT INTO clustertbl VALUES('FNT', '푸니타');
INSERT INTO clustertbl VALUES('KAI', '카아이');

INSERT INTO secondarytbl VALUES('FNT', '푸니타');
INSERT INTO secondarytbl VALUES('KAI', '카아이');

-- <실습 2> --
CREATE DATABASE IF NOT EXISTS testdb;
USE testdb;
DROP TABLE IF EXISTS mixedtbl;
CREATE TABLE mixedtbl
( userID  CHAR(8) NOT NULL ,
  name    VARCHAR(10) NOT NULL,
  addr     char(2)
);
INSERT INTO mixedtbl VALUES('LSG', '이승기', '서울');
INSERT INTO mixedtbl VALUES('KBS', '김범수', '경남');
INSERT INTO mixedtbl VALUES('KKH', '김경호', '전남');
INSERT INTO mixedtbl VALUES('JYP', '조용필',  '경기');
INSERT INTO mixedtbl VALUES('SSK', '성시경', '서울');
INSERT INTO mixedtbl VALUES('LJB', '임재범',  '서울');
INSERT INTO mixedtbl VALUES('YJS', '윤종신',  '경남');
INSERT INTO mixedtbl VALUES('EJW', '은지원', '경북');
INSERT INTO mixedtbl VALUES('JKW', '조관우', '경기');
INSERT INTO mixedtbl VALUES('BBK', '바비킴',  '서울');


ALTER TABLE mixedtbl
	ADD CONSTRAINT PK_mixedtbl_userID
		PRIMARY KEY (userID);

ALTER TABLE mixedtbl
	ADD CONSTRAINT UK_mixedtbl_name
		UNIQUE (name) ;

SHOW INDEX FROM mixedtbl;

SELECT addr FROM mixedtbl WHERE name = '임재범';

-- </실습 2> --



-- <실습 3> --

USE sqldb;

DROP TABLE IF EXISTS usertbl;
CREATE TABLE usertbl -- 회원 테이블
( userID  	CHAR(8) NOT NULL PRIMARY KEY, -- 사용자 아이디(PK)
  name    	VARCHAR(10) NOT NULL, -- 이름
  birthYear   INT NOT NULL,  -- 출생년도
  addr	  	CHAR(2) NOT NULL, -- 지역(경기,서울,경남 식으로 2글자만입력)
  mobile1	CHAR(3), -- 휴대폰의 국번(011, 016, 017, 018, 019, 010 등)
  mobile2	CHAR(8), -- 휴대폰의 나머지 전화번호(하이픈제외)
  height    	SMALLINT,  -- 키
  mDate    	DATE  -- 회원 가입일
);
INSERT INTO usertbl VALUES('LSG', '이승기', 1987, '서울', '011', '1111111', 182, '2008-8-8');
INSERT INTO usertbl VALUES('KBS', '김범수', 1979, '경남', '011', '2222222', 173, '2012-4-4');
INSERT INTO usertbl VALUES('KKH', '김경호', 1971, '전남', '019', '3333333', 177, '2007-7-7');
INSERT INTO usertbl VALUES('JYP', '조용필', 1950, '경기', '011', '4444444', 166, '2009-4-4');
INSERT INTO usertbl VALUES('SSK', '성시경', 1979, '서울', NULL  , NULL      , 186, '2013-12-12');
INSERT INTO usertbl VALUES('LJB', '임재범', 1963, '서울', '016', '6666666', 182, '2009-9-9');
INSERT INTO usertbl VALUES('YJS', '윤종신', 1969, '경남', NULL  , NULL      , 170, '2005-5-5');
INSERT INTO usertbl VALUES('EJW', '은지원', 1972, '경북', '011', '8888888', 174, '2014-3-3');
INSERT INTO usertbl VALUES('JKW', '조관우', 1965, '경기', '018', '9999999', 172, '2010-10-10');
INSERT INTO usertbl VALUES('BBK', '바비킴', 1973, '서울', '010', '0000000', 176, '2013-5-5');


SELECT * FROM usertbl;

USE sqldb;
SHOW INDEX FROM usertbl;

SHOW TABLE STATUS LIKE 'usertbl';

CREATE INDEX idx_usertbl_addr 
   ON usertbl (addr);
   
SHOW INDEX FROM usertbl;

SHOW TABLE STATUS LIKE 'usertbl';

ANALYZE TABLE usertbl;
SHOW TABLE STATUS LIKE 'usertbl';

CREATE UNIQUE INDEX idx_usertbl_birtyYear
	ON usertbl (birthYear);

CREATE UNIQUE INDEX idx_usertbl_name
	ON usertbl (name);

SHOW INDEX FROM usertbl;

INSERT INTO usertbl VALUES('GPS', '김범수', 1983, '미국', NULL  , NULL  , 162, NULL);

CREATE INDEX idx_usertbl_name_birthYear
	ON usertbl (name,birthYear);
DROP INDEX idx_usertbl_name ON usertbl;

SHOW INDEX FROM usertbl;

SELECT * FROM usertbl WHERE name = '윤종신' and birthYear = '1969';

CREATE INDEX idx_usertbl_mobile1
	ON usertbl (mobile1);

SELECT * FROM usertbl WHERE mobile1 = '011';

SHOW INDEX FROM usertbl;

DROP INDEX idx_usertbl_addr ON usertbl;
DROP INDEX idx_usertbl_name_birthYear ON usertbl;
DROP INDEX idx_usertbl_mobile1 ON usertbl;

ALTER TABLE usertbl DROP INDEX idx_usertbl_addr;
ALTER TABLE usertbl DROP INDEX idx_usertbl_name_birthYear;
ALTER TABLE usertbl DROP INDEX idx_usertbl_mobile1;

ALTER TABLE usertbl DROP PRIMARY KEY;

SELECT table_name, constraint_name
    FROM information_schema.referential_constraints
    WHERE constraint_schema = 'sqldb';

ALTER TABLE buyTbl DROP FOREIGN KEY buytbl_ibfk_1;
ALTER TABLE usertbl DROP PRIMARY KEY;

-- </실습 3> --



-- 9.5 인덱스의 성능비교
-- <실습 4> --

CREATE DATABASE IF NOT EXISTS indexdb;

USE indexdb;
SELECT COUNT(*) FROM employees.employees;

-- 랜덤 복사
CREATE TABLE emp SELECT * FROM employees.employees ORDER BY RAND();
CREATE TABLE emp_c SELECT * FROM employees.employees ORDER BY RAND();
CREATE TABLE emp_se SELECT * FROM employees.employees ORDER BY RAND();

SELECT * FROM emp LIMIT 5;
SELECT * FROM emp_c LIMIT 5;
SELECT * FROM emp_se LIMIT 5;

SHOW TABLE STATUS;

-- emp_c : PK, emp_Se : 보조
ALTER TABLE emp_c ADD PRIMARY KEY(emp_no);
ALTER TABLE emp_se ADD INDEX idx_emp_no (emp_no);

-- 클러스터인덱스인 emp_c만 정렬
SELECT * FROM emp LIMIT 5;
SELECT * FROM emp_c LIMIT 5;
SELECT * FROM emp_se LIMIT 5;

-- 생성인덱스 실제적용 
ANALYZE TABLE emp, emp_c, emp_se;

SHOW INDEX FROM emp;
SHOW INDEX FROM emp_c;
SHOW INDEX FROM emp_se;
SHOW TABLE STATUS;

-- step3 - workbench 종료, stop/start
/*
NET STOP MySQL
NET START MySQL
*/

-- step4
USE indexdb;

SHOW GLOBAL STATUS LIKE 'Innodb_pages_read'; -- 쿼리 실행 전의 읽은 페이지 수
SELECT * FROM emp WHERE emp_no = 100000;
SHOW GLOBAL STATUS LIKE 'Innodb_pages_read'; -- 쿼리 실행 후에 읽은 페이지 수

SHOW GLOBAL STATUS LIKE 'Innodb_pages_read'; -- 쿼리 실행 전의 읽은 페이지 수
SELECT * FROM emp_c WHERE emp_no = 100000;
SHOW GLOBAL STATUS LIKE 'Innodb_pages_read'; -- 쿼리 실행 후의 읽은 페이지 수

SHOW GLOBAL STATUS LIKE 'Innodb_pages_read'; -- 쿼리 실행 전의 읽은 페이지 수
SELECT * FROM emp_se WHERE emp_no = 100000;
SHOW GLOBAL STATUS LIKE 'Innodb_pages_read'; -- 쿼리 실행 후의 읽은 페이지 수

-- step5.
SHOW GLOBAL STATUS LIKE 'Innodb_pages_read'; -- 쿼리 실행 전의 읽은 페이지 수
SELECT * FROM emp WHERE emp_no < 11000;
SHOW GLOBAL STATUS LIKE 'Innodb_pages_read'; -- 쿼리 실행 후의 읽은 페이지 수

SHOW GLOBAL STATUS LIKE 'Innodb_pages_read'; -- 쿼리 실행 전의 읽은 페이지 수
SELECT * FROM emp_c WHERE emp_no < 11000;
SHOW GLOBAL STATUS LIKE 'Innodb_pages_read'; -- 쿼리 실행 후의 읽은 페이지 수

SHOW GLOBAL STATUS LIKE 'Innodb_pages_read'; -- 쿼리 실행 전의 읽은 페이지 수
SELECT * FROM emp_c WHERE emp_no < 500000 LIMIT 1000000; -- 전체 데이터를 읽음
SHOW GLOBAL STATUS LIKE 'Innodb_pages_read'; -- 쿼리 실행 후의 읽은 페이지 수

SHOW GLOBAL STATUS LIKE 'Innodb_pages_read'; 
SELECT * FROM emp_c IGNORE INDEX(PRIMARY) WHERE emp_no < 500000 LIMIT 1000000; 
SHOW GLOBAL STATUS LIKE 'Innodb_pages_read';

SHOW GLOBAL STATUS LIKE 'Innodb_pages_read'; 
SELECT * FROM emp_c LIMIT 1000000; -- 전체 데이터를 읽음
SHOW GLOBAL STATUS LIKE 'Innodb_pages_read'; 

SHOW GLOBAL STATUS LIKE 'Innodb_pages_read'; -- 쿼리 실행 전의 읽은 페이지 수
SELECT * FROM emp_se WHERE emp_no < 11000;
SHOW GLOBAL STATUS LIKE 'Innodb_pages_read'; -- 쿼리 실행 후의 읽은 페이지 수

SHOW GLOBAL STATUS LIKE 'Innodb_pages_read'; -- 쿼리 실행 전의 읽은 페이지 수
SELECT * FROM emp_se IGNORE INDEX(idx_emp_no) WHERE emp_no < 11000;
SHOW GLOBAL STATUS LIKE 'Innodb_pages_read'; -- 쿼리 실행 후의 읽은 페이지 수

SHOW GLOBAL STATUS LIKE 'Innodb_pages_read'; -- 쿼리 실행 전의 읽은 페이지 수
SELECT * FROM emp_se  WHERE emp_no < 400000 LIMIT 500000;
SHOW GLOBAL STATUS LIKE 'Innodb_pages_read'; -- 쿼리 실행 후의 읽은 페이지 수

SELECT * FROM emp_se  WHERE emp_no < 60000 LIMIT 500000;

-- step6
SELECT * FROM emp_c WHERE emp_no = 100000;

SHOW GLOBAL STATUS LIKE 'Innodb_pages_read'; -- 쿼리 실행 전의 읽은 페이지 수
SELECT * FROM emp_c WHERE emp_no*1 = 100000;
SHOW GLOBAL STATUS LIKE 'Innodb_pages_read'; -- 쿼리 실행 후의 읽은 페이지 수

SELECT * FROM emp_c WHERE emp_no = 100000 / 1 ;

SHOW GLOBAL STATUS LIKE 'Innodb_pages_read'; -- 쿼리 실행 전의 읽은 페이지 수
SELECT * FROM emp_c WHERE emp_no = 100000 / 1 ;
SHOW GLOBAL STATUS LIKE 'Innodb_pages_read'; -- 쿼리 실행 후의 읽은 페이지 수

-- step7
SELECT * FROM emp ;

ALTER TABLE emp ADD INDEX idx_gender (gender);
ANALYZE TABLE emp; -- 생성한 인덱스를 통계에 적용시킴
SHOW INDEX FROM emp;

SELECT * FROM emp WHERE gender = 'M' LIMIT 500000;

SELECT * FROM emp IGNORE INDEX (idx_gender) WHERE gender = 'M' LIMIT 500000;

-- </실습 4> --

-- 9.6 결론. 인덱스를 생성해야하는 경우와 그렇지 않은 경우ALTER
-- p432~436
SELECT name, birthYear, addr FROM usertbl WHERE userID = 'KKH';

CREATE TABLE usertbl 
( userID  CHAR(8) NOT NULL PRIMARY KEY, 
  name    VARCHAR(10) NOT NULL, 
  birthYear   INT NOT NULL,  
  addr	  CHAR(2) NOT NULL,
  mobile1	CHAR(3) NULL, 
  mobile2   CHAR(8) NULL, 
  height    SMALLINT NULL, 
  mDate    DATE NULL 
);

CREATE TABLE usertbl 
( userID  CHAR(8) NULL UNIQUE , 
  name    VARCHAR(10) NOT NULL, 
  birthYear   INT NOT NULL,  
  addr	  CHAR(2) NOT NULL,
  mobile1	CHAR(3) NULL, 
  mobile2   CHAR(8) NULL, 
  height    SMALLINT NULL, 
  mDate    DATE NULL 
);
