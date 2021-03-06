# 오라클 DBMS
1. 표준  SQL을 사용하는 데이터베이스 소프트웨어
2. 대용량, 분산, 고신뢰성을 보여주는 재표적인 DBMS SW
3. DBMS SW 스키마 : 저장공간 단위, 그룹
4. DBMS마다 기본 스키마를 관리하는 방법이 조금씩 다른데
	오라클에서는 사용자 ID가 스키마의 기본 단위가 된다.
5. 로그인(DB접속) 사용자 ID에 따라 관리할수 있근 DB가
다르게 된다.
6. Table Space : 데이터를 저장하는 기본 공간(로컬 디스크에 저장되는 물리적 공간)
7. 사용자를 등록하면 사용자 자체가 Schema가 되며,
사용자별로 데이터를 저장하는 물리적 공간을 OS에서 관리하는 
파일 단위 개념으로 사용한다.
8. Table Space : DB를 저장하는 논리적인 개념보다는 실제 데이터가 저장되는 파일이라고 보면 된다.
9. 사용자를 등록하기 전에 Table Space를 만들고, 사용자를 등록하면서 생성한 Table Space에 데이터를 저장하도록 연결하는 작업이 필요하다.

10. 오라클 DBMS 로 실습을 하면서 혹시나 물리적인 DB가 저장되는 폴더나, Table Space와 연결된 파일을 git에 올리지 않아야 한다.
11. 오라클 DBMS Table Space롸 연결된 파일은 용량이 상대적으로 매우 커서 git에 올리게 되면 문제가 발생할 수 있다.


### sys 사용자 접속 설정
1. 오라클 DBMS SW를 설치하면 기본적으로 DB Administer 사용자가
등록이 되어 있다.
2. System DBA : 오라클 DBMS를 관리하는 최상급 등급의 사용자
3. id 가 sys user : SQL Developer를 통해서 오라클 DBMS에 접속하여
Schema, User, Table 등을 생성하거나 삭제할수 있는 권한을 가진 최상위 등급의 사용자
4. sys user 는 오라클 DBMS를 설치할때 설정한 비밀번호로 접속을 할수 있다.

### 오라클 사용자 생성
1. sys 로 접속하여 SQL 실습, 개발, 운용 을 하는 것은 보안상, 안전상
매우 좋지 않다.
2. 일반적으로 사용자를 등록하고 그 사용자 ID로 접속하여 명령을 수행하는 것이 좋다.

### 오라클의 사용자 생성 절차
1. 사용자 사용할(관리할) TableSpace를 생성한다.
2. User 를 생성하면서 TableSpace를 default로 지정해 준다.
3. 오라클에서는 새로운 사용자를 등록하면 아무것도 할수없는 상태로 아이디만 생성을 한다.
4. 새로운 사용자가 DB에 접속하여 뭔가 업무를 수행하려면, 관리자(sys)가
새로운 사용자에게 권한을 부여해 주어야 한다.

### NULL 값
* 프로그램 코딩이나, DBMS에서 사용된 NULL 값
* 문자열행 : 공백, 빈칸 처럼 보이지는 않지만 코드값으로 인식되는 
데이터와 구분하기 위해서 사용하는 "아무것도 아닌 값"이라는 개념
* String s = " ", String s = "", String s = null
* DB에서 Null값은 칼럼에 데이터가 추가되지 않는 상태
* insert를 수행하면서 해당 칼럼의 데이터를 지정하지 않았을때

* DBMS PK로 지정된 칼럼이나, NNOT NULL로 지정된 칼럼은 데이터를
지정하지 않은 상태로 INSERT명령을 수행할수 없다.

## Database Language
1. DB Lang. 에는 DDL, DML, DCL 명령 세트가 있다
2. DDL(Data definition Lang.) : CREATE, DROP, ALTER
3. DML(Data Maniplation LANG.) : INSERT, SELECT, UPDATE, DELETE
4. DCL(Data Control Lan.) : GRANT, REVOK, COMMIT, ROLLBACK