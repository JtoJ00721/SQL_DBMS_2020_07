-- 여기는 tester 화면입니다.

CREATE TABLE tbl_testing(
    SIREAL CHAR(3) PRIMARY KEY,
    MYNAME NVARCHAR2(50) NOT NULL UNIQUE,
    GRADE NUMBER
);
DROP TABLE tbl_testing;

SELECT * FROM tbl_testing;

INSERT INTO tbl_testing(sireal,myname,grade)VALUES('001','농농이',1);
INSERT INTO tbl_testing(sireal,myname,grade)VALUES('002','빙빙이',4);
INSERT INTO tbl_testing(sireal,myname,grade)VALUES('003','쩔쩔이',4);
INSERT INTO tbl_testing(sireal,myname,grade)VALUES('004','심영',4);
INSERT INTO tbl_testing(sireal,myname,grade)VALUES('005','눈물의 요정',3);

DELETE FROM tbl_testing;

DELETE FROM tbl_testing WHERE sireal = 005;

-- 학년순 정리
SELECT sireal, myname,grade FROM tbl_testing ORDER BY grade;
SELECT sireal, myname,grade FROM tbl_testing ORDER BY grade DESC;

-- 같은 값을 지닌 칼럼끼리 모아모아
SELECT sireal, myname, grade FROM tbl_testing GROUP BY grade,myname,sireal;


-- 합계, 최저, 최고, 칼럼수, 평균
SELECT SUM(grade) FROM tbl_testing;
SELECT MIN(grade) FROM tbl_testing;
SELECT MAX(grade) FROM tbl_testing;
SELECT COUNT(*) FROM tbl_testing;
SELECT AVG(grade) FROM tbl_testing;

UPDATE tbl_testing SET grade = 2 WHERE myname = '심영';

SELECT * FROM tbl_testing;






