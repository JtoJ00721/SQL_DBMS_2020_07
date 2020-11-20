CREATE DATABASE myDB;
SHOW DATABASES;
USE myDB;
SHOW TABLES;
DESC tbl_book;

SELECT * FROM tbl_book;
SHOW CREATE TABLE tbl_book;

INSERT INTO tbl_book (title, author, comp, price)
VALUES('민족 전래동화 농농이','심영출판','쩔쩔이',2000000000);
INSERT INTO tbl_book (title, author, comp, price)
VALUES('야인시대','SBS','좀 과장된 역사',100000);
INSERT INTO tbl_book (title, author, comp, price)
VALUES('여러삶 시리즈','심영출판','쩔쩔이',2000000000);

DROP TABLE tbl_book;

