--여기는 user1 화면

CREATE TABLE tbl_readbook (
    r_seq	NUMBER		PRIMARY KEY,
    r_book_seq	NUMBER	NOT NULL	,
    r_date	VARCHAR2(10)		,
    r_stime	VARCHAR2(10)		,
    r_etime	VARCHAR2(10)		,
    r_comment	nVARCHAR2(2000)		

);

CREATE SEQUENCE seq_readbook
START WITH 1 INCREMENT BY 1;

SELECT * FROM tbl_readbook;

DROP TABLE tbl_readbook;

DROP SEQUENCE seq_readbook;