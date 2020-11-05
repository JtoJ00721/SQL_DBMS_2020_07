-- 여기는 dripbag 학원 네바다

CREATE TABLE tbl_gcomment (
    gc_seq	NUMBER		PRIMARY KEY ,
    gc_seqc NUMBER	UNIQUE NOT NULL 	,
    gc_writer	nVARCHAR2(100)	NOT NULL ,	
    gc_date	VARCHAR2(10)	NOT NULL ,	
    gc_time	VARCHAR2(10)	NOT NULL ,	
    gc_title	nVARCHAR2(4)	NOT NULL ,	
    gc_explain	nVARCHAR2(20)		,
    gc_likes	NUMBER		,
    gc_views	NUMBER		
);

DROP TABLE tbl_gcomment;

CREATE SEQUENCE SEQ_GC
START WITH 1 INCREMENT BY 1;

DROP SEQUENCE SEQ_GC;
DROP SEQUENCE SEQ_GCC;

CREATE SEQUENCE SEQ_GCC
START WITH 1 INCREMENT BY 1;

SELECT * FROM tbl_gcomment;










