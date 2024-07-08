
/* 08장 - table and view*/


-- 8.1 테이블
-- 8.1.1.테이블만들기
-- <실습 1> --

DROP DATABASE IF EXISTS ShopDB;
DROP DATABASE IF EXISTS ModelDB;
DROP DATABASE IF EXISTS sqldb;
DROP DATABASE IF EXISTS tabledb;

CREATE DATABASE tabledb;

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

CREATE TABLE buytbl -- 회원 구매 테이블(Buy Table의 약자)
(  num 		INT AUTO_INCREMENT NOT NULL PRIMARY KEY, -- 순번(PK)
   userID  	CHAR(8) NOT NULL, -- 아이디(FK)
   prodName 	CHAR(6) NOT NULL, --  물품명
   groupName 	CHAR(4)  , -- 분류
   price     	INT  NOT NULL, -- 단가
   amount    	SMALLINT  NOT NULL, -- 수량
   FOREIGN KEY (userID) REFERENCES usertbl(userID)
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
INSERT INTO buytbl VALUES(NULL, 'KBS', '운동화', NULL   , 30,   2);
INSERT INTO buytbl VALUES(NULL, 'KBS', '노트북', '전자', 1000, 1);
INSERT INTO buytbl VALUES(NULL, 'JYP', '모니터', '전자', 200,  1);
INSERT INTO buytbl VALUES(NULL, 'BBK', '모니터', '전자', 200,  5);
INSERT INTO buytbl VALUES(NULL, 'KBS', '청바지', '의류', 50,   3);
INSERT INTO buytbl VALUES(NULL, 'BBK', '메모리', '전자', 80,  10);
INSERT INTO buytbl VALUES(NULL, 'SSK', '책'    , '서적', 15,   5);
INSERT INTO buytbl VALUES(NULL, 'EJW', '책'    , '서적', 15,   2);
INSERT INTO buytbl VALUES(NULL, 'EJW', '청바지', '의류', 50,   1);
INSERT INTO buytbl VALUES(NULL, 'BBK', '운동화', NULL   , 30,   2);
INSERT INTO buytbl VALUES(NULL, 'EJW', '책'    , '서적', 15,   1);
INSERT INTO buytbl VALUES(NULL, 'BBK', '운동화', NULL   , 30,   2);


SELECT * FROM usertbl;
SELECT * FROM buytbl;

-- </실습 1> --

CREATE TABLE test (num INT);

-- <실습 2> --

DROP DATABASE tabledb;
CREATE DATABASE tabledb;

USE tabledb;
DROP TABLE IF EXISTS buytbl, usertbl;
CREATE TABLE usertbl -- 회원 테이블
( userID  CHAR(8), -- 사용자 아이디
  name    VARCHAR(10), -- 이름
  birthYear   INT,  -- 출생년도
  addr	  CHAR(2), -- 지역(경기,서울,경남 등으로 글자만 입력)
  mobile1  CHAR(3), -- 휴대폰의국번(011, 016, 017, 018, 019, 010 등)
  mobile2  CHAR(8), -- 휴대폰의 나머지 전화번호(하이픈 제외)
  height    SMALLINT,  -- 키
  mDate    DATE  -- 회원 가입일
);
CREATE TABLE buytbl -- 구매 테이블
(  num INT, -- 순번(PK)
   userid  CHAR(8),-- 아이디(FK)
   prodName CHAR(6), -- 물품명
   groupName CHAR(4) , -- 분류
   price     INT , -- 단가
   amount SMALLINT -- 수량
);

USE tabledb;
DROP TABLE IF EXISTS buytbl, usertbl;
CREATE TABLE usertbl 
( userID  CHAR(8) NOT NULL , 
  name    VARCHAR(10) NOT NULL, 
  birthYear   INT NOT NULL,  
  addr	  CHAR(2) NOT NULL,
  mobile1	CHAR(3) NULL, 
  mobile2   CHAR(8) NULL, 
  height    SMALLINT NULL, 
  mDate    DATE NULL 
);
CREATE TABLE buytbl 
(  num INT NOT NULL , 
   userid  CHAR(8) NOT NULL ,
   prodName CHAR(6) NOT NULL,
   groupName CHAR(4) NULL , 
   price     INT  NOT NULL,
   amount    SMALLINT  NOT NULL 
);

USE tabledb;
DROP TABLE IF EXISTS buytbl, usertbl;
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
CREATE TABLE buytbl 
(  num INT NOT NULL PRIMARY KEY, 
   userid  CHAR(8) NOT NULL ,
   prodName CHAR(6) NOT NULL,
   groupName CHAR(4) NULL , 
   price     INT  NOT NULL,
   amount    SMALLINT  NOT NULL 
);


DROP TABLE IF EXISTS buytbl;
CREATE TABLE buytbl 
(  num INT AUTO_INCREMENT NOT NULL PRIMARY KEY, 
   userid  CHAR(8) NOT NULL ,
   prodName CHAR(6) NOT NULL,
   groupName CHAR(4) NULL , 
   price     INT  NOT NULL,
   amount    SMALLINT  NOT NULL 
);


DROP TABLE IF EXISTS buytbl;
CREATE TABLE buytbl 
(  num INT AUTO_INCREMENT NOT NULL PRIMARY KEY, 
   userid  CHAR(8) NOT NULL ,
   prodName CHAR(6) NOT NULL,
   groupName CHAR(4) NULL , 
   price     INT  NOT NULL,
   amount    SMALLINT  NOT NULL 
   , FOREIGN KEY(userid) REFERENCES usertbl(userID)
);

INSERT INTO usertbl VALUES('LSG', '이승기', 1987, '서울', '011', '1111111', 182, '2008-8-8');
INSERT INTO usertbl VALUES('KBS', '김범수', 1979, '경남', '011', '2222222', 173, '2012-4-4');
INSERT INTO usertbl VALUES('KKH', '김경호', 1971, '전남', '019', '3333333', 177, '2007-7-7');

INSERT INTO buytbl VALUES(NULL, 'KBS', '운동화', NULL, 30, 2);
INSERT INTO buytbl VALUES(NULL, 'KBS', '노트북', '전자', 1000, 1);
INSERT INTO buytbl VALUES(NULL, 'JYP', '모니터', '전자', 200, 1);

-- 추가 입력 
INSERT INTO usertbl VALUES('JYP', '조용필', 1950, '경기', '011', '4444444', 166, '2009-4-4');
INSERT INTO usertbl VALUES('SSK', '성시경', 1979, '서울', NULL  , NULL      , 186, '2013-12-12');
INSERT INTO usertbl VALUES('LJB', '임재범', 1963, '서울', '016', '6666666', 182, '2009-9-9');
INSERT INTO usertbl VALUES('YJS', '윤종신', 1969, '경남', NULL  , NULL      , 170, '2005-5-5');
INSERT INTO usertbl VALUES('EJW', '은지원', 1972, '경북', '011', '8888888', 174, '2014-3-3');
INSERT INTO usertbl VALUES('JKW', '조관우', 1965, '경기', '018', '9999999', 172, '2010-10-10');
INSERT INTO usertbl VALUES('BBK', '바비킴', 1973, '서울', '010', '0000000', 176, '2013-5-5');
INSERT INTO buytbl VALUES(NULL, 'JYP', '모니터', '전자', 200,  1);
INSERT INTO buytbl VALUES(NULL, 'BBK', '모니터', '전자', 200,  5);
INSERT INTO buytbl VALUES(NULL, 'KBS', '청바지', '의류', 50,   3);
INSERT INTO buytbl VALUES(NULL, 'BBK', '메모리', '전자', 80,  10);
INSERT INTO buytbl VALUES(NULL, 'SSK', '책'    , '서적', 15,   5);
INSERT INTO buytbl VALUES(NULL, 'EJW', '책'    , '서적', 15,   2);
INSERT INTO buytbl VALUES(NULL, 'EJW', '청바지', '의류', 50,   1);
INSERT INTO buytbl VALUES(NULL, 'BBK', '운동화', NULL   , 30,   2);
INSERT INTO buytbl VALUES(NULL, 'EJW', '책'    , '서적', 15,   1);
INSERT INTO buytbl VALUES(NULL, 'BBK', '운동화', NULL   , 30,   2);



-- 8.1.2.제약조건

-- 기본키 제약조건
-- </실습 2> --

USE tabledb;
DROP TABLE IF EXISTS buytbl, usertbl;
CREATE TABLE usertbl 
( userID  CHAR(8) NOT NULL PRIMARY KEY, 
  name    VARCHAR(10) NOT NULL, 
  birthYear   INT NOT NULL
);

DESCRIBE usertbl;

DROP TABLE IF EXISTS usertbl;
CREATE TABLE usertbl 
( userID  CHAR(8) NOT NULL, 
  name    VARCHAR(10) NOT NULL, 
  birthYear   INT NOT NULL,  
  CONSTRAINT PRIMARY KEY PK_usertbl_userID (userID)
);

DROP TABLE IF EXISTS usertbl;
CREATE TABLE usertbl 
(   userID  CHAR(8) NOT NULL, 
    name    VARCHAR(10) NOT NULL, 
    birthYear   INT NOT NULL
);
ALTER TABLE usertbl
     ADD CONSTRAINT PK_usertbl_userID 
     PRIMARY KEY (userID);


DROP TABLE IF EXISTS prodTbl;
CREATE TABLE prodTbl
( prodCode CHAR(3) NOT NULL,
  prodID   CHAR(4)  NOT NULL,
  prodDate DATETIME  NOT NULL,
  prodCur  CHAR(10) NULL
);
ALTER TABLE prodTbl
	ADD CONSTRAINT PK_prodTbl_proCode_prodID 
	PRIMARY KEY (prodCode, prodID) ;

DROP TABLE IF EXISTS prodTbl;
CREATE TABLE prodTbl
( prodCode CHAR(3) NOT NULL,
  prodID   CHAR(4)  NOT NULL,
  prodDate DATETIME  NOT NULL,
  prodCur  CHAR(10) NULL,
  CONSTRAINT PK_prodTbl_proCode_prodID 
	PRIMARY KEY (prodCode, prodID) 
);

SHOW INDEX FROM prodTbl;

-- 외래키 제약조건
DROP TABLE IF EXISTS buytbl, usertbl;
CREATE TABLE usertbl 
( userID  CHAR(8) NOT NULL PRIMARY KEY, 
  name    VARCHAR(10) NOT NULL, 
  birthYear   INT NOT NULL 
);
CREATE TABLE buytbl 
(  num INT AUTO_INCREMENT NOT NULL PRIMARY KEY , 
   userID  CHAR(8) NOT NULL, 
   prodName CHAR(6) NOT NULL,
   FOREIGN KEY(userID) REFERENCES usertbl(userID)
);


DROP TABLE IF EXISTS buytbl;
CREATE TABLE buytbl 
(  num INT AUTO_INCREMENT NOT NULL PRIMARY KEY , 
   userID  CHAR(8) NOT NULL, 
   prodName CHAR(6) NOT NULL,
   CONSTRAINT FK_usertbl_buytbl FOREIGN KEY(userID) REFERENCES usertbl(userID)
);


DROP TABLE IF EXISTS buytbl;
CREATE TABLE buytbl 
(  num INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
   userID  CHAR(8) NOT NULL, 
   prodName CHAR(6) NOT NULL 
);
ALTER TABLE buytbl
    ADD CONSTRAINT FK_usertbl_buytbl 
    FOREIGN KEY (userID) 
    REFERENCES usertbl(userID);

SHOW INDEX FROM buytbl ;

ALTER TABLE buytbl
	DROP FOREIGN KEY FK_usertbl_buytbl; -- 외래 키 제거
ALTER TABLE buytbl
	ADD CONSTRAINT FK_usertbl_buytbl
	FOREIGN KEY (userID)
	REFERENCES usertbl (userID)
	ON UPDATE CASCADE;

-- 유니크제약조건
USE tabledb;
DROP TABLE IF EXISTS buytbl, usertbl;
CREATE TABLE usertbl 
( userID  CHAR(8) NOT NULL PRIMARY KEY, 
  name    VARCHAR(10) NOT NULL, 
  birthYear   INT NOT NULL,  
  email   CHAR(30) NULL  UNIQUE
);
DROP TABLE IF EXISTS usertbl;
CREATE TABLE usertbl 
( userID  CHAR(8) NOT NULL PRIMARY KEY,
  name    VARCHAR(10) NOT NULL, 
  birthYear   INT NOT NULL,  
  email   CHAR(30) NULL ,  
  CONSTRAINT AK_email  UNIQUE (email)
);

-- check 제약조건
-- 출생연도가 1900년 이후 그리고 2023년 이전, 이름은 반드시 넣어야 함.
DROP TABLE IF EXISTS usertbl;
CREATE TABLE usertbl 
( userID  CHAR(8) PRIMARY KEY,
  name    VARCHAR(10) , 
  birthYear  INT CHECK  (birthYear >= 1900 AND birthYear <= 2023),
  mobile1	char(3) NULL, 
  CONSTRAINT CK_name CHECK ( name IS NOT NULL)  
);

-- 휴대폰 국번 체크
ALTER TABLE usertbl
	ADD CONSTRAINT CK_mobile1
	CHECK  (mobile1 IN ('010','011','016','017','018','019')) ;

-- default정의
DROP TABLE IF EXISTS usertbl;
CREATE TABLE usertbl 
( userID  	CHAR(8) NOT NULL PRIMARY KEY,  
  name    	VARCHAR(10) NOT NULL, 
  birthYear	INT NOT NULL DEFAULT -1,
  addr	  	CHAR(2) NOT NULL DEFAULT '서울',
  mobile1	CHAR(3) NULL, 
  mobile2	CHAR(8) NULL, 
  height	SMALLINT NULL DEFAULT 170, 
  mDate    	DATE NULL
);


DROP TABLE IF EXISTS usertbl;
CREATE TABLE usertbl 
( userID  	CHAR(8) NOT NULL PRIMARY KEY,  
  name    	VARCHAR(10) NOT NULL, 
  birthYear	INT NOT NULL,
  addr	  	CHAR(2) NOT NULL,
  mobile1	CHAR(3) NULL, 
  mobile2	CHAR(8) NULL, 
  height	SMALLINT NULL, 
  mDate    	DATE NULL
);
ALTER TABLE usertbl
	ALTER COLUMN birthYear SET DEFAULT -1;
ALTER TABLE usertbl
	ALTER COLUMN addr SET DEFAULT '서울';
ALTER TABLE usertbl
	ALTER COLUMN height SET DEFAULT 170;

-- default 문은 DEFAULT로 설정된 값을 자동 입력한다.
INSERT INTO usertbl VALUES ('LHL', '이혜리', default, default, '011', '1234567', default, '2023.12.12');
-- 열이름이 명시되지 않으면 DEFAULT로 설정된 값을 자동 입력한다
INSERT INTO usertbl(userID, name) VALUES('KAY', '김아영');
-- 값이 직접 명기되면 DEFAULT로 설정된 값은 무시된다.
INSERT INTO usertbl VALUES ('WB', '원빈', 1982, '대전', '019', '9876543', 176, '2020.5.5');
SELECT * FROM usertbl;


-- 8.1.3 테이블압축
-- <실습 3> --

CREATE DATABASE IF NOT EXISTS compressDB;
USE compressDB;
CREATE TABLE normalTBL( emp_no int , first_name varchar(14));
CREATE TABLE compressTBL( emp_no int , first_name varchar(14))
	ROW_FORMAT=COMPRESSED ;

INSERT INTO normalTbl 
     SELECT emp_no, first_name FROM employees.employees;   
INSERT INTO compressTBL 
     SELECT emp_no, first_name FROM employees.employees;

SHOW TABLE STATUS FROM compressDB;

DROP DATABASE IF EXISTS compressDB;

-- </실습 3> --


-- 8.1.4 임시테이블
-- <실습 4> --


-- Workbench 1
USE employees;
CREATE TEMPORARY TABLE  IF NOT EXISTS  temptbl (id INT, name CHAR(5));
CREATE TEMPORARY TABLE  IF NOT EXISTS employees (id INT, name CHAR(5));
DESCRIBE temptbl;
DESCRIBE employees;

INSERT INTO temptbl VALUES (1, 'This');
INSERT INTO employees VALUES (2, 'MySQL');
SELECT * FROM temptbl;
SELECT * FROM employees;

-- Workbench 2
USE employees;
SELECT * FROM temptbl;
SELECT * FROM employees;

-- Workbench 1
DROP TABLE temptbl; 

USE employees;
SELECT * FROM employees;

-- 8.1.5 테이블삭제
DROP TABLE 테이블명;


-- 8.1.6 테이블수덜
-- </실습 4> --

-- a. 열추가
USE tabledb;
ALTER TABLE usertbl
	ADD homepage VARCHAR(30)  -- 열추가
		DEFAULT 'http://www.hanbit.co.kr' -- 디폴트값
		NULL; -- Null 허용함

-- b. 열삭제
ALTER TABLE usertbl
	DROP COLUMN mobile1;

-- c. 열변경(이름, 데이터타입)
ALTER TABLE usertbl
	CHANGE COLUMN name uName VARCHAR(20) NULL ;

-- d. 열 제약조건추가 및 삭제
ALTER TABLE usertbl
	DROP PRIMARY KEY; 

ALTER TABLE buytbl
	DROP FOREIGN KEY buytbl_ibfk_1;


-- <실습 5> 테이블의 제약조건 및 수정방법 -- 

USE tabledb;
DROP TABLE IF EXISTS buytbl, usertbl;
CREATE TABLE usertbl 
( userID  CHAR(8), 
  name    VARCHAR(10),
  birthYear   INT,  
  addr	  CHAR(2), 
  mobile1	CHAR(3), 
  mobile2   CHAR(8), 
  height    SMALLINT, 
  mDate    DATE 
);
CREATE TABLE buytbl 
(  num int AUTO_INCREMENT PRIMARY KEY,
   userid  CHAR(8),
   prodName CHAR(6),
   groupName CHAR(4),
   price     INT ,
   amount   SMALLINT
);


INSERT INTO usertbl VALUES('LSG', '이승기', 1987, '서울', '011', '1111111', 182, '2008-8-8');
INSERT INTO usertbl VALUES('KBS', '김범수', NULL, '경남', '011', '2222222', 173, '2012-4-4');
INSERT INTO usertbl VALUES('KKH', '김경호', 1871, '전남', '019', '3333333', 177, '2007-7-7');
INSERT INTO usertbl VALUES('JYP', '조용필', 1950, '경기', '011', '4444444', 166, '2009-4-4');
INSERT INTO buytbl VALUES(NULL, 'KBS', '운동화', NULL   , 30,   2);
INSERT INTO buytbl VALUES(NULL,'KBS', '노트북', '전자', 1000, 1);
INSERT INTO buytbl VALUES(NULL,'JYP', '모니터', '전자', 200,  1);
INSERT INTO buytbl VALUES(NULL,'BBK', '모니터', '전자', 200,  5);


ALTER TABLE usertbl
	ADD CONSTRAINT PK_usertbl_userID
	PRIMARY KEY (userID);

DESC usertbl;

ALTER TABLE buytbl
	ADD CONSTRAINT FK_usertbl_buytbl
	FOREIGN KEY (userID)
	REFERENCES usertbl (userID);

DELETE FROM buytbl WHERE userid = 'BBK';
ALTER TABLE buytbl
	ADD CONSTRAINT FK_usertbl_buytbl
	FOREIGN KEY (userID)
	REFERENCES usertbl (userID);

INSERT INTO buytbl VALUES(NULL,'BBK', '모니터', '전자', 200,  5);

SET foreign_key_checks = 0;
INSERT INTO buytbl VALUES(NULL, 'BBK', '모니터', '전자', 200,  5);
INSERT INTO buytbl VALUES(NULL, 'KBS', '청바지', '의류', 50,   3);
INSERT INTO buytbl VALUES(NULL, 'BBK', '메모리', '전자', 80,  10);
INSERT INTO buytbl VALUES(NULL, 'SSK', '책'    , '서적', 15,   5);
INSERT INTO buytbl VALUES(NULL, 'EJW', '책'    , '서적', 15,   2);
INSERT INTO buytbl VALUES(NULL, 'EJW', '청바지', '의류', 50,   1);
INSERT INTO buytbl VALUES(NULL, 'BBK', '운동화', NULL   , 30,   2);
INSERT INTO buytbl VALUES(NULL, 'EJW', '책'    , '서적', 15,   1);
INSERT INTO buytbl VALUES(NULL, 'BBK', '운동화', NULL   , 30,   2);
SET foreign_key_checks = 1;

-- check 제약조건 실습
ALTER TABLE userTBL
	ADD CONSTRAINT CK_birthYear
	CHECK ( (birthYear >= 1900 AND birthYear <= 2023) AND (birthYear IS NOT NULL) );

UPDATE usertbl SET birthYear=1979 WHERE userID='KBS';
UPDATE usertbl SET birthYear=1971 WHERE userID='KKH';

ALTER TABLE userTBL
	ADD CONSTRAINT CK_birthYear
	CHECK ( (birthYear >= 1900 AND birthYear <= 2023) AND (birthYear IS NOT NULL) );
   
-- 에러 2999년
INSERT INTO usertbl VALUES('TKV', '태권뷔', 2999, '우주', NULL  , NULL , 186, '2023-12-12');

-- 정상
INSERT INTO usertbl VALUES('SSK', '성시경', 1979, '서울', NULL  , NULL , 186, '2013-12-12');
INSERT INTO usertbl VALUES('LJB', '임재범', 1963, '서울', '016', '6666666', 182, '2009-9-9');
INSERT INTO usertbl VALUES('YJS', '윤종신', 1969, '경남', NULL  , NULL , 170, '2005-5-5');
INSERT INTO usertbl VALUES('EJW', '은지원', 1972, '경북', '011', '8888888', 174, '2014-3-3');
INSERT INTO usertbl VALUES('JKW', '조관우', 1965, '경기', '018', '9999999', 172, '2010-10-10');
INSERT INTO usertbl VALUES('BBK', '바비킴', 1973, '서울', '010', '0000000', 176, '2013-5-5');

-- 외래키에러
UPDATE usertbl SET userID = 'VVK' WHERE userID='BBK';

-- 외래키확인중지 : BBK를 VVK로 수정
SET foreign_key_checks = 0;
UPDATE usertbl SET userID = 'VVK' WHERE userID='BBK';
SET foreign_key_checks = 1;


-- 건수 12건인데 8건만 출력
SELECT B.userid, U.name, B.prodName, U.addr, CONCAT(U.mobile1, U.mobile2)  AS '연락처'
   FROM buytbl B
     INNER JOIN usertbl U
        ON B.userid = U.userid ;

-- 총건수확인
SELECT COUNT(*) FROM buytbl;

-- 외부조인
SELECT B.userid, U.name, B.prodName, U.addr, CONCAT(U.mobile1, U.mobile2) AS '연락처'
   FROM buytbl B
     LEFT OUTER JOIN usertbl U
        ON B.userid = U.userid
   ORDER BY B.userid ;


-- VVK를 원래 BBK로 복귀
SET foreign_key_checks = 0;
UPDATE usertbl SET userID = 'BBK' WHERE userID='VVK';
SET foreign_key_checks = 1;

-- ON UPDATE CASCADE;
ALTER TABLE buytbl
	DROP FOREIGN KEY FK_usertbl_buytbl;
ALTER TABLE buytbl 
	ADD CONSTRAINT FK_usertbl_buytbl
		FOREIGN KEY (userID)
		REFERENCES usertbl (userID)
		ON UPDATE CASCADE;

-- VVK 데이터 출력확인
UPDATE usertbl SET userID = 'VVK' WHERE userID='BBK';
SELECT B.userid, U.name, B.prodName, U.addr, CONCAT(U.mobile1, U.mobile2) AS '연락처'
   FROM buytbl B
     INNER JOIN usertbl U
        ON B.userid = U.userid
  ORDER BY B.userid;

-- 외래키 제약으로 삭제 불가
DELETE FROM usertbl WHERE userID = 'VVK';

-- ON DELETE CASCADE; 설정
ALTER TABLE buytbl
	DROP FOREIGN KEY FK_usertbl_buytbl;
ALTER TABLE buytbl 
	ADD CONSTRAINT FK_usertbl_buytbl
		FOREIGN KEY (userID)
		REFERENCES usertbl (userID)
		ON UPDATE CASCADE
		ON DELETE CASCADE;

-- 삭제확인
DELETE FROM usertbl WHERE userID = 'VVK';
SELECT * FROM buytbl ;

-- check 제약 컬럼 삭제
ALTER TABLE usertbl
	DROP COLUMN birthYear ;

-- 8.2 View
-- 8.2.1 view의 개념
-- </실습 5> --

USE tabledb;
SELECT userID, name, addr FROM usertbl;

USE tabledb;
CREATE VIEW v_usertbl
AS
	SELECT userid, name, addr FROM usertbl;

SELECT * FROM v_usertbl;  -- 뷰를 테이블이라고 생각해도 무방

-- 8.2.2 뷰의 장점
-- a. 보완에 도움
-- b. 쿼리단순화
SELECT U.userid, U.name, B.prodName, U.addr, CONCAT(U.mobile1, U.mobile2)  AS '연락처'
FROM usertbl U
  INNER JOIN buytbl B
     ON U.userid = B.userid ;

CREATE VIEW v_userbuytbl
AS
SELECT U.userid, U.name, B.prodName, U.addr, CONCAT(U.mobile1, U.mobile2)  AS '연락처'
FROM usertbl U
	INNER JOIN buytbl B
	 ON U.userid = B.userid ;

SELECT * FROM v_userbuytbl WHERE name = '김범수';


-- <실습 6> : 뷰생성 및 활용--

-- a. sqlDb 초기화 (6장 실습2. step6)
-- sqlDB.sql 파일이 없을 경우 아래 주석 해제후 실행
-- DROP DATABASE IF EXISTS sqldb; -- 만약 sqldb가 존재하면 우선 삭제한다.
-- CREATE DATABASE sqldb;

-- USE sqldb;
-- CREATE TABLE usertbl -- 회원 테이블
-- ( userID  	CHAR(8) NOT NULL PRIMARY KEY, -- 사용자 아이디(PK)
--   name    	VARCHAR(10) NOT NULL, -- 이름
--   birthYear   INT NOT NULL,  -- 출생년도
--   addr	  	CHAR(2) NOT NULL, -- 지역(경기,서울,경남 식으로 2글자만입력)
--   mobile1	CHAR(3), -- 휴대폰의 국번(011, 016, 017, 018, 019, 010 등)
--   mobile2	CHAR(8), -- 휴대폰의 나머지 전화번호(하이픈제외)
--   height    	SMALLINT,  -- 키
--   mDate    	DATE  -- 회원 가입일
-- );
-- CREATE TABLE buytbl -- 회원 구매 테이블(Buy Table의 약자)
-- (  num 		INT AUTO_INCREMENT NOT NULL PRIMARY KEY, -- 순번(PK)
--    userID  	CHAR(8) NOT NULL, -- 아이디(FK)
--    prodName 	CHAR(6) NOT NULL, --  물품명
--    groupName 	CHAR(4)  , -- 분류
--    price     	INT  NOT NULL, -- 단가
--    amount    	SMALLINT  NOT NULL, -- 수량
--    FOREIGN KEY (userID) REFERENCES usertbl(userID)
-- );

-- INSERT INTO usertbl VALUES('LSG', '이승기', 1987, '서울', '011', '1111111', 182, '2008-8-8');
-- INSERT INTO usertbl VALUES('KBS', '김범수', 1979, '경남', '011', '2222222', 173, '2012-4-4');
-- INSERT INTO usertbl VALUES('KKH', '김경호', 1971, '전남', '019', '3333333', 177, '2007-7-7');
-- INSERT INTO usertbl VALUES('JYP', '조용필', 1950, '경기', '011', '4444444', 166, '2009-4-4');
-- INSERT INTO usertbl VALUES('SSK', '성시경', 1979, '서울', NULL  , NULL      , 186, '2013-12-12');
-- INSERT INTO usertbl VALUES('LJB', '임재범', 1963, '서울', '016', '6666666', 182, '2009-9-9');
-- INSERT INTO usertbl VALUES('YJS', '윤종신', 1969, '경남', NULL  , NULL      , 170, '2005-5-5');
-- INSERT INTO usertbl VALUES('EJW', '은지원', 1972, '경북', '011', '8888888', 174, '2014-3-3');
-- INSERT INTO usertbl VALUES('JKW', '조관우', 1965, '경기', '018', '9999999', 172, '2010-10-10');
-- INSERT INTO usertbl VALUES('BBK', '바비킴', 1973, '서울', '010', '0000000', 176, '2013-5-5');
-- INSERT INTO buytbl VALUES(NULL, 'KBS', '운동화', NULL   , 30,   2);
-- INSERT INTO buytbl VALUES(NULL, 'KBS', '노트북', '전자', 1000, 1);
-- INSERT INTO buytbl VALUES(NULL, 'JYP', '모니터', '전자', 200,  1);
-- INSERT INTO buytbl VALUES(NULL, 'BBK', '모니터', '전자', 200,  5);
-- INSERT INTO buytbl VALUES(NULL, 'KBS', '청바지', '의류', 50,   3);
-- INSERT INTO buytbl VALUES(NULL, 'BBK', '메모리', '전자', 80,  10);
-- INSERT INTO buytbl VALUES(NULL, 'SSK', '책'    , '서적', 15,   5);
-- INSERT INTO buytbl VALUES(NULL, 'EJW', '책'    , '서적', 15,   2);
-- INSERT INTO buytbl VALUES(NULL, 'EJW', '청바지', '의류', 50,   1);
-- INSERT INTO buytbl VALUES(NULL, 'BBK', '운동화', NULL   , 30,   2);
-- INSERT INTO buytbl VALUES(NULL, 'EJW', '책'    , '서적', 15,   1);
-- INSERT INTO buytbl VALUES(NULL, 'BBK', '운동화', NULL   , 30,   2);

-- SELECT * FROM usertbl;
-- SELECT * FROM buytbl;

-- 실습6.step1
USE sqlDB;
CREATE VIEW v_userbuytbl
AS
   SELECT U.userid AS 'USER ID', U.name AS 'USER NAME', B.prodName AS 'PRODUCT NAME', 
		U.addr, CONCAT(U.mobile1, U.mobile2) AS 'MOBILE PHONE'
      FROM usertbl U
	INNER JOIN buytbl B
	 ON U.userid = B.userid;

SELECT `USER ID`, `USER NAME` FROM v_userbuytbl; -- 주의! 백틱을 사용한다.

-- 실습6.step2
ALTER VIEW v_userbuytbl
AS
   SELECT U.userid AS '사용자 아이디', U.name AS '이름', B.prodName AS '제품 이름', 
		U.addr, CONCAT(U.mobile1, U.mobile2)  AS '전화 번호'
      FROM usertbl U
          INNER JOIN buytbl B
             ON U.userid = B.userid ;

SELECT `이름`,`전화 번호` FROM v_userbuytbl;

-- 실습6.step3
DROP VIEW v_userbuytbl;

-- 실습6.step4
USE sqlDB;
CREATE OR REPLACE VIEW v_usertbl
AS
	SELECT userid, name, addr FROM usertbl;

DESCRIBE v_usertbl;

SHOW CREATE VIEW v_usertbl;

-- 실습6.step5
UPDATE v_usertbl SET addr = '부산' WHERE userid='JKW' ;

-- iinser 오류발생 -- 해결은 birthYear이 not null로 설정을 null or default값 지정
INSERT INTO v_usertbl(userid, name, addr) VALUES('KBM','김병만','충북') ;

-- 실습6.step6
CREATE VIEW v_sum
AS
	SELECT userid AS 'userid', SUM(price*amount) AS 'total'  
	   FROM buytbl GROUP BY userid;

SELECT * FROM v_sum;

-- 뷰정보확인
SELECT * FROM INFORMATION_SCHEMA.VIEWS
     WHERE TABLE_SCHEMA = 'sqldb' AND TABLE_NAME = 'v_sum';

-- 실습6.step7
CREATE VIEW v_height177
AS
	SELECT * FROM usertbl WHERE height >= 177 ;

SELECT * FROM v_height177 ;

-- 177미만 자료 없는 상태에서 테스트
DELETE FROM v_height177 WHERE height < 177 ;

-- 177미만 자료 추가
INSERT INTO v_height177 VALUES('KBM', '김병만', 1977 , '경기', '010', '5555555', 158, '2023-01-01') ;

-- WITH CHECK OPTION ;
ALTER VIEW v_height177
AS
	SELECT * FROM usertbl WHERE height >= 177
	    WITH CHECK OPTION ;

-- check 제약조건 - 177이상자료만 추가
INSERT INTO v_height177 VALUES('WDT', '서장훈', 2006 , '서울', '010', '3333333', 155, '2023-3-3') ;

-- 실습6.step8 : 복합view
CREATE VIEW v_userbuytbl
AS
  SELECT U.userid, U.name, B.prodName, U.addr, CONCAT(U.mobile1, U.mobile2) AS mobile
   FROM usertbl U
      INNER JOIN buytbl B
         ON U.userid = B.userid ;

-- 복합뷰 추가 에러
INSERT INTO v_userbuytbl VALUES('PKL','박경리','운동화','경기','00000000000','2023-2-2');

-- 실습6.step9 : 뷰참조 테이블 삭제
DROP TABLE IF EXISTS buytbl, usertbl;

-- 뷰없음
SELECT * FROM v_userbuytbl;

-- 뷰상태확인
CHECK TABLE v_userbuytbl;


-- 8.3 테이블스페이스
-- 8.3.1. 테이블스페이스개념 
-- 테이블이 실제로 저장되는 공간
-- 지정하지 않으면 시스템 테이블스페이스에 저장
-- </실습 6> --

-- 테이블스페이스정보 확인
-- innodb_file_per_table : 각 테이블마다 별도의 스페이스에 저장여부 옵션
SHOW VARIABLES LIKE 'innodb_file_per_table';

-- innodb_data_file_path : 최대파일크기 옵션
SHOW VARIABLES LIKE 'innodb_data_file_path';

-- <실습 7> 테이블스페이스 별도 저장 --
-- step1 : 테이블스페이스 생성
CREATE TABLESPACE ts_a ADD DATAFILE 'ts_a.ibd';
CREATE TABLESPACE ts_b ADD DATAFILE 'ts_b.ibd';
CREATE TABLESPACE ts_c ADD DATAFILE 'ts_c.ibd';

-- step2 : 테이블스페이스 확인 C:\ProgramData\MySQL\MySQL Server 8.0\Data

-- step3 : 테이블스페이스에 테이블 생성
USE sqldb;
CREATE TABLE table_a (id INT) TABLESPACE ts_a;

CREATE TABLE table_b (id INT);
ALTER TABLE table_b TABLESPACE ts_b;

-- step4 : 대용량테이블북사 -> 에러발생 
-- 원인 : 쿼리응답시간이 짧음
CREATE TABLE table_c (SELECT * FROM employees.salaries);
ALTER TABLE table_c TABLESPACE ts_c;

-- 쿼리응답시간설정 : Edit > Preferences > SQLEditor
-- 1. DBMS connection read timeout interval = 0
-- 2. DBMS connection timeout interval = 0
-- 재실행
DROP TABLE  table_c ;
CREATE TABLE table_c (SELECT * FROM employees.salaries);
ALTER TABLE table_c TABLESPACE ts_c;

-- </실습 7> --