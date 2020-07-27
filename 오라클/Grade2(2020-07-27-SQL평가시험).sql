-- 여기는 grade2 화면

CREATE TABLE tbl_student(
s_num	CHAR(5)	UNIQUE NOT NULL,
s_name	NVARCHAR2(30)	NOT NULL,
s_tel	VARCHAR2(30)	NOT NULL,
s_addr	NVARCHAR2(125)	,
s_grade	NUMBER	NOT NULL,
s_dept	CHAR(3)	NOT NULL

);
DROP TABLE tbl_student;


CREATE TABLE tbl_dept(
d_num	CHAR(3)	UNIQUE NOT NULL,
d_name	NVARCHAR2(50)	UNIQUE NOT NULL,
d_prof	NVARCHAR2(50)	UNIQUE

);
DROP TABLE tbl_dept;

CREATE TABLE tbl_score(
c_num	CHAR(5)	 PRIMARY KEY	,
c_dept CHAR(3) NOT NULL,
c_kor	NUMBER	 NOT NULL	,
c_eng	NUMBER	 NOT NULL	,
c_math	NUMBER	 NOT NULL	,
c_music	NUMBER	 NOT NULL	,
c_art	NUMBER	 NOT NULL	,
c_soft	NUMBER	 NOT NULL	,
c_db	NUMBER	 NOT NULL	,
c_sum	NUMBER	 NOT NULL	,
c_avg	NUMBER	 NOT NULL	

);
DROP TABLE tbl_score;

INSERT INTO tbl_student
VALUES('20001','길한수','010-2217-7851','경남 김해시 어방동 1088-7',3,'008');

INSERT INTO tbl_student
VALUES('20002','강이찬','010-4311-1533','강원도 속초시 대포동 956-5',1,'006');

INSERT INTO tbl_student
VALUES('20003','개원훈','010-6262-7441','경북 영천시 문외동 38-3번',1,'009');

INSERT INTO tbl_student
VALUES('20004','경시현','010-9794-9856','서울시 구로구 구로동 3-35번지',1,'006');

INSERT INTO tbl_student
VALUES('20005','공동영','010-8811-7761','강원도 동해시 천곡동 1077-3',2,'010');

-------------------------------------------

INSERT INTO tbl_dept
VALUES('001','컴퓨터공학','토발즈');

INSERT INTO tbl_dept
VALUES('002','전자공학','이철기');

INSERT INTO tbl_dept
VALUES('003','법학','킹스필드');

-------------------------------------------

INSERT INTO tbl_score
VALUES('20001','데이터베이스',71);
INSERT INTO tbl_score
VALUES('20001','수학',63);
INSERT INTO tbl_score
VALUES('20001','미술',50);

INSERT INTO tbl_score
VALUES('20002','데이터베이스',84);
INSERT INTO tbl_score
VALUES('20002','음악',75);
INSERT INTO tbl_score
VALUES('20002','국어',52);

INSERT INTO tbl_score
VALUES('20003','수학',89);
INSERT INTO tbl_score
VALUES('20003','영어',63);
INSERT INTO tbl_score
VALUES('20003','국어',70);



SELECT * FROM tbl_student;
SELECT * FROM tbl_dept;
SELECT * FROM tbl_score;

SELECT c_num
FROM tbl_score
WHERE c_score < 60;

UPDATE tbl_student 
SET s_addr = '광주광역시 북구 중흥동 경양로 170번'
WHERE s_name = '공동영';

SELECT s_name, s_addr FROM tbl_student
WHERE s_name = '공동영';

DELETE tbl_student
WHERE s_name = '개원훈';
SELECT * FROM tbl_student;

COMMIT ;

SELECT * FROM tbl_dept;

SELECT s.s_name, s.s_name, s.s_tel, s.s_addr, s.s_grade, s.s_dept, d.d_name, d.d_prof
FROM tbl_student S
    LEFT JOIN tbl_dept D
        ON s.s_dept = d.d_num;
        
        
SELECT c_num,AVG(c_score)
FROM tbl_score GROUP BY c_num;
        
SELECT s_num, SUM(c_score)
FROM tbl_student 
    LEFT JOIN tbl_score
        ON s_num = c_num
            GROUP BY s_num;
            
            
            
SELECT s_num, s_name, s_tel, SUM(c_score), AVG(c_score)
FROM tbl_student 
    LEFT JOIN tbl_score
        ON s_num = c_num
            GROUP BY s_num, s_name, s_tel;
            
SELECT * FROM tbl_score;

SELECT s_num, s_name, s_tel, s_dept, c_kor,c_eng,c_math,c_music,c_art,c_soft,c_db,c_sum,c_avg
FROM tbl_student 
    LEFT JOIN tbl_score
        ON s_num = c_num
            GROUP BY s_num, s_name, s_tel, s_dept, c_kor,c_eng,c_math,c_music,c_art,c_soft,c_db,c_sum,c_avg;
            
SELECT s_num, s_name, s_tel, s_dept,d_name, c_kor,c_eng,c_math,c_music,c_art,c_soft,c_db,c_sum,c_avg
FROM tbl_student 
    LEFT JOIN tbl_dept
        ON s_dept = d_num
            LEFT JOIN tbl_score
                ON s_dept = c_dept
                ORDER BY s_num;
            

        
        
        









