-- 여기는 관리자 화면
CREATE USER dripbag IDENTIFIED BY dripbag
DEFAULT TABLESPACE dripbagTS;

CREATE TABLESPACE dripbagTS
DATAFILE 'C:/bizwork/oracle_dbms/dripbagTS.dbf'
SIZE 1M AUTOEXTEND ON NEXT 500k;

GRANT DBA TO dripbag;