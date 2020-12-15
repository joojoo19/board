CREATE TABLE member (
    memberid VARCHAR2(50) PRIMARY KEY,
    name VARCHAR2(50) NOT NULL,
    password VARCHAR2(10) NOT NULL,
    regdate DATE NOT NULL
);
 
 
 SELECT * FROM member;
 
 
 UPDATE member SET password='sdf' WHERE memberid='asd';
 
 rollback;
 
 CREATE TABLE board_member (
 id VARCHAR2(50) PRIMARY KEY,
 name VARCHAR2(50) NOT NULL,
 password VARCHAR2(20) NOT NULL,
 email VARCHAR2(50) NOT NULL,
 birth DATE NOT NULL );
 
 DESC board_member;
 