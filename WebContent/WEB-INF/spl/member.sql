CREATE TABLE member (
    memberid VARCHAR2(50) PRIMARY KEY,
    name VARCHAR2(50) NOT NULL,
    password VARCHAR2(10) NOT NULL,
    regdate DATE NOT NULL
);
 
 
 SELECT * FROM member;
 commit;
 DELETE FROM member WHERE memberid='03';
 
 ALTER TABLE member ADD (email VARCHAR2(50));
 
 UPDATE member SET password='sdf' WHERE memberid='asd';
 
 rollback;
 
 CREATE TABLE board_member (
 id VARCHAR2(50) PRIMARY KEY,
 name VARCHAR2(50) NOT NULL,
 password VARCHAR2(20) NOT NULL,
 email VARCHAR2(50) NOT NULL,
 birth DATE NOT NULL );

SELECT
    *
FROM board_member;
ALTER TABLE board_member
DROP COLUMN birth;
 
 INSERT INTO board_member VALUES ('asd1', 'asd1', 'asd1', 'asd1@asd', TO_DATE('1980-02-02', 'yyyy-mm-dd'));