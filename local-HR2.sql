--���̺� �������
CREATE TABLE dept2(
dno number(2),
danme VARCHAR2(14),
loc VARCHAR2(13));

--���� ���̺��� ����Ʈ�� �����´�
CREATE TABLE dept_second
as SELECT
    *
FROM department;

SELECT
    *
FROM dept_second;

--���� ���̺��� ������ �����ϴ� ���
CREATE TABLE dept_third
as select * from department
where 1=0;

select * from dept_third;

--�÷��� ������ �� ��� ��Ī�� �����Ѵ�
CREATE TABLE dept20
as select eno, ename, salary*12 as "ani_sal"
from employee where dno=20;

--�÷����� ADD(�÷��� Ÿ��(ũ��)
ALTER TABLE dept20
ADD(birth date);

--�÷�����
ALTER TABLE dept20
MODIFY ename VARCHAR2(30);

--�ܼ��� Į�� �̸��� ������ ��
ALTER TABLE dept20
RENAME COLUMN SCHOOL TO EDUCATRION;

SELECT * FROM dept20;

--�÷����� �ϴ� ���
ALTER TABLE dept20
DROP COLUMN birth;

--���̺�� ���� rename+�� ���̺��+TO+�ű� ���̺��
RENAME dept20 TO emp20;

--���̺� ����
DROP TABLE emp20;

--���̺��� ������ ����� ���븸 �����ϴ� ���
TRUNCATE TABLE dept_second;

SELECT * FROM dept_second;

--������ ���� �⺻������ db���� �������ִ� ���̺�, �ε���, ��, ���Ǿ� �� ��ü�� ��� ������ �� �� �ִ�.
select table_name from user_tables;


--���̺� ���� ����
--1��
CREATE TABLE dept(
dno number(2),
danme VARCHAR2(14),
loc VARCHAR2(13));
--2��
CREATE TABLE EMP(
ENO number(4),
ENAME VARCHAR2(10),
dno number(2));
--3��
ALTER TABLE EMP
MODIFY ename VARCHAR2(25);
--4��
CREATE TABLE employee2
as SELECT
    *
FROM employee;

SELECT * from emp;

--5��
drop TABLE EMP;

--6��
RENAME employee2 to emp;

--7��
ALTER TABLE emp
DROP COLUMN ename;

--8��
ALTER TABLE dept
rename COLUMN loc to unused;

--9��
ALTER TABLE dept
DROP COLUMN unused;