-- 여기는 USER1 화면

DROP TABLE tbl_iolist;

CREATE TABLE tbl_iolist (
seq	NUMBER		PRIMARY KEY,
io_date	VARCHAR2(10)		,
io_time	VARCHAR2(10)		,
io_input	CHAR(1)		DEFAULT ('1') CONSTRAINT io_input_veri CHECK(io_input = '1' OR io_input = '2'),
io_pname	nVARCHAR2(30),
io_price	NUMBER		,
io_quan	NUMBER	,
io_total	NUMBER		

);

SELECT * FROM tbl_iolist;

CREATE SEQUENCE seq_iolist
START WITH 1 INCREMENT BY 1;

DROP SEQUENCE seq_iolist;

COMMIT;

