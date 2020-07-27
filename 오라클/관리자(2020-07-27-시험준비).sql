-- 여기는 괌리자 화면입니다.

CREATE TABLESPACE testTS
DATAFILE 'C:/bizwork/workspace/oracle_data/testTS.dbf'
SIZE 1M AUTOEXTEND ON NEXT 500k;

CREATE USER tester IDENTIFIED BY tester
DEFAULT TABLESPACE testTS;

GRANT DBA TO tester;

REVOKE DBA FROM tester;


