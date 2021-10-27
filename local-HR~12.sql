insert into employee (eno,ename, job, manager, hiredate, salary, commission, dno)
values(8121, 'ALICE', 'CLERK', 7788, SYSDATE, 1200,100,10);

INSERT INTO employee
VALUES(8231, 'KATEHRINE' , 'SALESMAN', 7698, SYSDATE, 1750,800,30);

COMMIT;

SELECT
    *
FROM employee;

INSERT INTO employee(ENO) VALUES(8500);
INSERT INTO employee(ENO, ENAME) VALUES(8600,NULL);
INSERT INTO employee(ENO, ENAME) VALUES(8700, '');

--��¥ �����ϱ�
INSERT INTO employee (ENO,ENAME, HIREDATE)
VALUES(8800,NULL,'2020/12/31');
--TO_DATE�Լ� ��밡��
INSERT INTO employee (ENO,ENAME, HIREDATE)
VALUES(8900,NULL,TO_DATE('2020-12-31','YYYY-MM-DD'));
INSERT INTO employee (ENO, ENAME, HIREDATE)
VALUES(8950,NULL,SYSDATE);
--������ ����
--������ ����
CREATE TABLE EMP2
AS SELECT * FROM employee WHERE 0=1;
--������ �Է±������ ���� ���̺��� �����͸� �������� ���
INSERT INTO EMP2
SELECT * FROM employee; 

SELECT * FROM EMP2;

--������Ʈ ����
CREATE TABLE EMP3
AS SELECT
    *
FROM employee;
--�ǽ��� ���̺� ����
UPDATE EMP3 SET ENAME = 'RUNA',JOB='MANAGER' WHERE ENO  = 8500;
--ENO �� 8500�� ��� �̸��� RUNA�� �ٲٰ� �������� �޴����� �ٲ��ش�
UPDATE EMP3 SET COMMISSION = 500;
--��� ����� Ŀ�̼��� 500���� �ٲ��ش�
UPDATE EMP3 SET SALARY =(SELECT LOSAL FROM salgrade WHERE GRADE=1)
WHERE DNO IN NULL;
--DNO�� NULL�� ����� �޿��� �޿���� 1���, �����޿��� ���߾� �����Ѵ�.

UPDATE EMP3 SET DNO=(SELECT DNO FROM department WHERE DNAME='OPERATIONS'),
MANAGER = (SELECT ENO FROM EMP3 WHERE JOB = 'PRESIDENT')
WHERE ENAME IS NULL;
--�̸��� ���� ����� �Ҽ��� OPERATIONS�� �ű�� �������� ��������Ʈ�� ���� ������������ ��ġ�Ѵ�.


--�μ�Ʈ�� ����
--1��
CREATE TABLE EMP_INSERT
AS SELECT * FROM employee;

--2��
insert into emp_insert (eno,ename, job, manager, hiredate, salary, commission, dno)
values(8121, 'JUN', 'CEO', NULL, SYSDATE, 10000,50000,10);

--3��
insert into emp_insert (eno,ename, job, manager, hiredate, salary, commission, dno)
values(8210, 'SIDJUN', 'ANALYST',8121, TO_DATE('2021-09-30','YYYY-MM-DD'), 1000,500,10);

--4��
Create Table EMP_COPY AS ( select * from employee );

--5��
UPDATE EMP_COPY SET ENO ='10' WHERE ENO= 7788; 

--6QJS
