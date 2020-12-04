-- 2020년 마지막 MVC 패턴 실습

CREATE TABLE tbl_employees (

id	NUMBER		PRIMARY KEY,
first_name	nVARCHAR2(30)	NOT NULL	,
last_name	nVARCHAR2(30)	NOT NULL	,
address	nVARCHAR2(125)		,
tel	VARCHAR2(20)		,
email	VARCHAR2(125)		

);

CREATE SEQUENCE seq_employees
START WITH 1 INCREMENT BY 1;

SELECT * FROM tbl_employees;

COMMIT;


