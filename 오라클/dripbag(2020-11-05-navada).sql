-- 여기는 dripbag 학원 네바다

CREATE TABLE tbl_user (
    seq	NUMBER		PRIMARY KEY,
    email	nVARCHAR2(100)	UNIQUE NOT NULL	,
    pwd	nVARCHAR2(30)	NOT NULL	,
    roll	NUMBER	DEFAULT 1	,
    dates	VARCHAR2(10)	NOT NULL	
);

DROP TABLE tbl_user;

CREATE SEQUENCE seq_user
START WITH 1 INCREMENT BY 1;

CREATE TABLE tbl_googleList (
    seq	NUMBER		PRIMARY KEY,
    dates	VARCHAR2(10)	NOT NULL	,
    title	nVARCHAR2(225)	NOT NULL	,
    img	nVARCHAR2(225)		
);

DROP TABLE tbl_googleList;

CREATE SEQUENCE seq_googleList
START WITH 1 INCREMENT BY 1;

CREATE TABLE tbl_newsList (
seq	NUMBER		PRIMARY KEY,
dates	VARCHAR2(10)	NOT NULL	,
title	VARCHAR2(1300)	NOT NULL	,
img	nVARCHAR2(1300)		,
cont	CLOB		
);

SELECT * FROM tbl_newsList;

DROP TABLE tbl_newsList;

CREATE SEQUENCE seq_newsList
START WITH 1 INCREMENT BY 1;

CREATE TABLE tbl_googleComment(
    seq	NUMBER		PRIMARY KEY,
    seqJ	NUMBER	 NOT NULL	,
    writer	nVARCHAR2(100)	NOT NULL	,
    dates	VARCHAR2(10)	NOT NULL	,
    times	VARCHAR2(10)	NOT NULL	,
    title	nVARCHAR2(4)	NOT NULL	,
    cont	nVARCHAR2(20)		,
    likes	NUMBER		,
    views	NUMBER		
);

DROP TABLE tbl_googleComment;

CREATE SEQUENCE SEQ_GC
START WITH 1 INCREMENT BY 1;

CREATE TABLE tbl_NewsComment(
    seq	NUMBER		PRIMARY KEY,
    seqJ	NUMBER	NOT NULL 	,
    writer	nVARCHAR2(100)	NOT NULL	,
    dates	VARCHAR2(10)	NOT NULL	,
    times	VARCHAR2(10)	NOT NULL	,
    title	nVARCHAR2(4)	NOT NULL	,
    cont	nVARCHAR2(20)		,
    likes	NUMBER		,
    views	NUMBER		
);

UPDATE tbl_newsComment SET likes = likes+1 WHERE
		seq = 11;

SELECT * FROM tbl_newscomment;

DROP TABLE tbl_NewsComment;

CREATE SEQUENCE SEQ_NC
START WITH 1 INCREMENT BY 1;

CREATE TABLE tbl_notice(
    seq	NUMBER		PRIMARY KEY,
    writer	nVARCHAR2(100)	NOT NULL	,
    dates	VARCHAR2(10)	NOT NULL	,
    times	VARCHAR2(10)	NOT NULL	,
    title	nVARCHAR2(200)	NOT NULL	,
    cont	nVARCHAR2(2000)		,
    likes	NUMBER		,
    views	NUMBER  
);

DROP TABLE tbl_notice;

CREATE SEQUENCE seq_notice
START WITH 1 INCREMENT BY 1;

DROP SEQUENCE seq_notice;




select * from tbl_newsList;

	select * from tbl_newsComment WHERE  seqj = 282 and seq < 44 and  ROWNUM  <= 15
									  AND 
									( 
										TITLE  LIKE '%1%' OR 
									    CONT   LIKE '%1%' OR  
									  	WRITER LIKE '%1%'
									 )
						   ORDER BY seq DESC;


select * from tbl_newsComment;




