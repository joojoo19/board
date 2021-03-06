
CREATE TABLE article (
    article_no NUMBER GENERATED AS IDENTITY,
    writer_id VARCHAR2(50) NOT NULL,
    writer_name VARCHAR2(50) NOT NULL,
    title VARCHAR2(255) NOT NULL,
    regdate DATE NOT NULL,
    moddate DATE NOT NULL,
    read_cnd NUMBER,
    PRIMARY KEY (article_no)
);

CREATE TABLE article_content (
    article_no NUMBER PRIMARY KEY,
    content VARCHAR2(4000)
);
DESC article;

SELECT * FROM article;
SELECT * FROM article_content;
DELETE article;
commit;
INSERT INTO article_content (article_no, content) VALUES (1, '개정판');
INSERT INTO article (writer_id, writer_name, title, regdate, moddate, read_cnt)
				     VALUES ('123', 'asd', '책제목', SYSDATE, SYSDATE, 5);
     SELECT last_insert_writer_id();     
     
     SELECT writer_id FROM article WHERE writer_id GROUP BY max(regdate);
     
     SELECT writer_id FROM article WHERE regdate = (SELECT max(regdate) FROM article);
     
     SELECT * FROM article ORDER BY article_no DESC limit 2, 1;
     
     SELECT * FROM article WHERE ROWNUM BETWEEN 10 and 1;
     
 SELECT * FROM (SELECT article_no, title, writer_name, ROW_NUMBER() OVER (ORDER BY article_no DESC) rn FROM article);
 WHERE rn;  
 
 CREATE TABLE board_article (
    article_no NUMBER GENERATED AS IDENTITY,
    writer_id VARCHAR2(50) NOT NULL,
    writer_name VARCHAR2(50) NOT NULL,
    title VARCHAR2(255) NOT NULL,
    regdate DATE NOT NULL,
    moddate DATE NOT NULL,
    read_cnt NUMBER,
    PRIMARY KEY (article_no)
);

CREATE TABLE board_article_content (
    article_no NUMBER PRIMARY KEY,
    content VARCHAR2(4000)
);


CREATE TABLE reply(
replyid NUMBER GENERATED AS IDENTITY,
memberid VARCHAR2(50) NOT NULL,
article_no NUMBER NOT NULL,
body VARCHAR2(1000) NOT NULL,
regdate DATE NOT NULL,
moddate DATE,
PRIMARY KEY (replyid)
);

SELECT
    *
FROM reply;
rollback;

SELECT replyid, memberid, article_no, body, regdate FROM reply WHERE article_no=48 ORDER BY DESC;
