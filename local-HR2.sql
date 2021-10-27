--테이블 생성방법
CREATE TABLE dept2(
dno number(2),
danme VARCHAR2(14),
loc VARCHAR2(13));

--기존 테이블에서 데이트를 가져온다
CREATE TABLE dept_second
as SELECT
    *
FROM department;

SELECT
    *
FROM dept_second;

--기존 테이블의 구조만 복사하는 방법
CREATE TABLE dept_third
as select * from department
where 1=0;

select * from dept_third;

--컬럼에 수식이 들어갈 경우 별칭을 지정한다
CREATE TABLE dept20
as select eno, ename, salary*12 as "ani_sal"
from employee where dno=20;

--컬럼생성 ADD(컬럼명 타입(크기)
ALTER TABLE dept20
ADD(birth date);

--컬럼변경
ALTER TABLE dept20
MODIFY ename VARCHAR2(30);

--단순히 칼럼 이름만 병경할 시
ALTER TABLE dept20
RENAME COLUMN SCHOOL TO EDUCATRION;

SELECT * FROM dept20;

--컬럼삭제 하는 방법
ALTER TABLE dept20
DROP COLUMN birth;

--테이블명 변경 rename+구 테이블명+TO+신규 테이블명
RENAME dept20 TO emp20;

--테이블 삭제
DROP TABLE emp20;

--테이블의 구조는 남기고 내용만 삭제하는 방법
TRUNCATE TABLE dept_second;

SELECT * FROM dept_second;

--데이터 사전 기본적으로 db에서 제공해주는 테이블, 인덱스, 뷰, 동의어 등 객체나 모든 정보를 볼 수 있다.
select table_name from user_tables;


--테이블 생성 예제
--1번
CREATE TABLE dept(
dno number(2),
danme VARCHAR2(14),
loc VARCHAR2(13));
--2번
CREATE TABLE EMP(
ENO number(4),
ENAME VARCHAR2(10),
dno number(2));
--3번
ALTER TABLE EMP
MODIFY ename VARCHAR2(25);
--4번
CREATE TABLE employee2
as SELECT
    *
FROM employee;

SELECT * from emp;

--5번
drop TABLE EMP;

--6번
RENAME employee2 to emp;

--7번
ALTER TABLE emp
DROP COLUMN ename;

--8번
ALTER TABLE dept
rename COLUMN loc to unused;

--9번
ALTER TABLE dept
DROP COLUMN unused;