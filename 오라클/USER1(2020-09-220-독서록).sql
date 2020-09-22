-- USER1에서 독서록 프로젝트

CREATE TABLE tbl_books(
    seq	NUMBER		PRIMARY KEY,
    title	nVARCHAR2(125)	NOT NULL	,
    link	nVARCHAR2(255)		,
    image	nVARCHAR2(255)		,
    author	nVARCHAR2(125)		,
    price	NUMBER		,
    discount	NUMBER	,	
    publisher	nVARCHAR2(125)		,
    isbn	CHAR(13)		,
    description	nVARCHAR2(2000)	,	
    pubdate	CHAR(15)		,
    buydate	CHAR(10)		,
    buyprice	NUMBER		,
    buystore	nVARCHAR2(50)		
);


CREATE SEQUENCE seq_books
START WITH 1 INCREMENT BY 1;


INSERT INTO tbl_books (seq,title,author,publisher)
VALUES(SEQ_BOOKS.NEXTVAL,'고전 전래동화 농농이','쩔쩔이','밈적인 출판사');

INSERT INTO tbl_books (seq,title,author,publisher)
VALUES(SEQ_BOOKS.NEXTVAL,'여러삶 시리즈','쩔쩔이','게이버');
COMMIT;

DELETE FROM tbl_books;
COMMIT;





















