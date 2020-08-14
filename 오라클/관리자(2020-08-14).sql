-- 여기는 관리자 화면

-- 블로그를 위한 테이블스페이스 생성
CREATE TABLESPACE blogTS
DATAFILE 'C:/bizwork/oracle_dbms/blog.dbf'
SIZE 1M AUTOEXTEND ON NEXT 1K;

-- user1 사용자 생성
CREATE USER user1 IDENTIFIED BY user1
DEFAULT TABLESPACE blogTS;

-- user1 에게 권한부여
GRANT DBA TO user1;