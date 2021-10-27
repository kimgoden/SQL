--값이 없는 테이블을 생성한다
create table customer(
id varchar2(20) unique, --unique라는 제약조건이 들어갈경우 중복값이 들어오면 오류가 발생한다
pwd varchar2(20)  not null,
name varchar2(20) not null);

--네임에 널값이 들어가기 때문에 오류가 발생한다
insert into customer
values('asdf','1234',null);

select * from customer;

--모든 값이 제대로 들어가야 오류가 뜨지 않는다
insert into customer
values('asdf','1234','park');

--
insert into customer
values('asdf','5678','kim');

DROP TABLE customer;

create table customer(
id varchar2(20) CONSTRAINT customer_id_uk UNIQUE,
pwd varchar2(20)  CONSTRAINT customer_pwd_nn not null,
name varchar2(20) CONSTRAINT customer_name_nn not null);

--유니크 제약조건을 명시하지 않으면 자동으로 제약조건의 이름을 부여한다
select table_name, constraint_name
from user_constraints
where table_name in('CUSTOMER');


DROP TABLE CUSTOMER;

create table customer(
id varchar2(20),
pwd varchar2(20)  CONSTRAINT customer_pwd_nn not null,
name varchar2(20) CONSTRAINT customer_name_nn not null,
CONSTRAINT CUSTOMER_ID_PK PRIMARY KEY(ID));

INSERT INTO CUSTOMER
VALUES('asdf','1234','park');
INSERT INTO CUSTOMER
VALUES('asdf','5678','kim');
INSERT INTO CUSTOMER
VALUES('null','1597','hong');

select table_name, constraint_name
from user_constraints
where table_name in('CUSTOMER');

SELECT * FROM CUSTOMER;


CREATE TABLE STUDENT(
STUNO VARCHAR2(20),
NAME VARCHAR2(20) CONSTRAINT STUDENT_NAME_NN NOT NULL,
MAJOR VARCHAR2(20),
CONSTRAINT SUTDENT_STUNO_PK PRIMARY KEY(STUNO) );

create table registration ( 
enrollid varchar2(20), 
stuno varchar2(20), 
subject varchar2(20) constraint registration_subject_nn not null, 
constraint registration_enrollid_pk primary key(enrollid), 
constraint registration_stuno_fk foreign key(stuno) references student(stuno));


INSERT INTO STUDENT
VALUES ('S001','KO','MATH');
INSERT INTO STUDENT
VALUES ('S002','HONG','PHYSICS');
INSERT INTO STUDENT
VALUES ('S003','LISA SU','COMPUTER SCIENCE');

INSERT INTO registration
VALUES ('E001','S001','LINEAR ALGEBRA');
INSERT INTO registration
VALUES ('E002','S003','ALGORITHM');
INSERT INTO registration
VALUES ('E003','S005','CONSTITUTIONAL LAW');

DROP TABLE CUSTOMER;

CREATE TABLE CUSTOMER(
ID VARCHAR2(20),
PWD VARCHAR2(20) CONSTRAINT CUSTOMER_PWD_NN NOT NULL,
NAME VARCHAR2(20) CONSTRAINT CUSTOMER_NAME_NN NOT NULL,
JUMSU NUMBER(3) CONSTRAINT CUSTOMER_JUMSU_RANGE CHECK(0<=JUMSU AND JUMSU<=100),
CONSTRAINT CUSTOMER_ID_PK PRIMARY KEY(ID) );

INSERT INTO CUSTOMER
VALUES('asdf','1234','park',75);
INSERT INTO CUSTOMER
VALUES('qwer','6789','kim',123);
INSERT INTO CUSTOMER
VALUES('qazx','4321','go',-65);

SELECT * FROM CUSTOMER;


CREATE TABLE STU_COPY
AS
SELECT * FROM STUDENT;

CREATE TABLE REG_COPY
AS
SELECT * FROM registration;

ALTER TABLE STU_COPY
ADD CONSTRAINT  STU_COPY_STUNO_PK PRIMARY KEY(STUNO);

ALTER TABLE REG_COPY
ADD CONSTRAINT  REG_COPY_ENROLLID_PK PRIMARY KEY(ENROLLID);

ALTER TABLE REG_COPY
ADD CONSTRAINT REG_COPY_STUNO_FK FOREIGN KEY(STUNO) REFERENCES STUDENT(STUNO);

ALTER TABLE STU_COPY
MODIFY MAJOR CONSTRAINT STU_COPY_MAJOR_NN NOT NULL;

SELECT * FROM STU_COPY;
SELECT * FROM REG_COPY;

ALTER TABLE REG_COPY
DROP PRIMARY KEY;

ALTER TABLE STU_COPY
DROP  PRIMARY KEY CASCADE;

ALTER TABLE STU_COPY
DROP CONSTRAINT STU_COPY_MAJOR_NN;

--1번문제
CREATE TABLE EMP_SAMPLE
AS
SELECT * FROM EMPLOYEE;

ALTER TABLE EMP_SAMPLE
ADD CONSTRAINT MY_EMP_PK PRIMARY KEY(ENO);

SELECT * FROM EMP_SAMPLE;

--2번문제
CREATE TABLE DEPT_SAMPLE
AS
SELECT * FROM DEPARTMENT;

ALTER TABLE DEPT_SAMPLE
ADD CONSTRAINT MY_DEPT_PK PRIMARY KEY(DNO);

--3번문제
ALTER TABLE EMP_SAMPLE
ADD CONSTRAINT my_emp_dept_fk
FOREIGN KEY(DNO) REFERENCES DEPT_SAMPLE(DNO);

SELECT * FROM emp_sample;

--4번문제
ALTER TABLE emp_sample
ADD CONSTRAINT emp_commission_ch CHECK(commission>0);

drop table emp_sample cascade constraint;

CREATE TABLE emp_sample
as select * from employee
where 1=0;
