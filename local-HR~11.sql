SELECT SUM(SALARY) AS "�޿� �Ѿ�",
ROUND(AVG(SALARY),2) AS "�޿� ���", --�Ҽ��� �ڸ����� ROUND(�Լ��̸�(����),�ڸ���) ����, �ݿø� ���� �����Ÿ� TRUNC���
MAX(SALARY) AS "�޿� �ִ�",
MIN(SALARY) AS "�޿� �ּ�"
FROM EMPLOYEE;

SELECT MAX(HIREDATE), MIN(HIREDATE) FROM EMPLOYEE;


SELECT COUNT(*) AS "����� �� ��" FROM EMPLOYEE; --����� �� ��

SELECT SUM(commission)AS "Ŀ�̼� �Ѿ�" FROM employee; -- Ŀ�̼� �Ѿ�

SELECT COUNT(commission) AS "Ŀ�̼��� �޴� ��� ��" FROM employee 
WHERE commission IS NOT NULL; 

SELECT JOB FROM employee ORDER BY JOB ASC;

SELECT COUNT(JOB) AS "������ ��" FROM employee;
SELECT COUNT(DISTINCT JOB)  AS "������ ����" FROM employee; --���̺� �ߺ��� ���� ������ ������ �����ش�

SELECT TRUNC(AVG(SALARY),2) AS "�޿� ���" FROM employee GROUP BY DNO;

SELECT DNO AS "�μ���ȣ", AVG(SALARY) AS "�޿����" FROM employee GROUP BY DNO;--�μ����� �������� �׷��� ���� �޿� ����� ����

SELECT DNO, JOB, SUM(SALARY) FROM employee GROUP BY DNO,JOB ORDER BY DNO ASC, JOB ASC;
--�μ��� ������ �׷����� ���� �μ��� ������ ������������ �����ϰ� �޿��� �Ѿ��� ��Ÿ����

SELECT JOB, SUM(SALARY) FROM employee GROUP BY JOB HAVING AVG(salary)>=2000;
--�׷��Լ��� ����� ������ �ֱ� ���ؼ� WHERE�� �ƴ� �׷����+ HAVING �� ����ؾ��Ѵ�

--HAVING�� ����
SELECT DNO, MAX(SALARY) FROM employee GROUP BY DNO HAVING MAX(SALARY)>=3000;
--�μ��� �ְ� �޿��� 3000�̻��� �μ��� ��ȣ�� �ְ�޿� ���

SELECT JOB, COUNT(*) as "�����ο�" , SUM(SALARY) FROM EMPLOYEE WHERE JOB NOT LIKE '%MANAGER%'
GROUP BY JOB HAVING SUM(SALARY) >=5000 ORDER BY SUM(salary);
--�Ŵ����� �����ϰ� �޿� �Ѿ��� 5000�̻��� ��� ������ �޿� �Ѿװ� �ش��ο�

select round(max(avg(salary)),0) as "�ѱ޿�" from employee GROUP BY dno;


--�׷��Լ� ����
--1��
select MAX(salary) as "Maximum",  min(salary) as "Minimun", sum(salary) as "SUM", ROUND(AVG(SALARY),0) AS  "Average"
from employee;

--2��
select job, MAX(salary) as "Maximum",  min(salary) as "Minimun", sum(salary) as "SUM",
ROUND(AVG(SALARY),0) AS  "Average" from employee GROUP BY JOB order by job;

--3��
SELECT JOB, COUNT(*)  AS "������ �ߺ� ���" FROM employee GROUP BY JOB;
--SELECT COUNT(*) FROM EMPLOYEE GROUP BY JOB ORDER BY JOB;

--4��
select count(DISTINCT MANAGER) as "COUNT(MANAGER)" FROM employee;
--SELECT COUNT(*) FROM EMPLOYEE WHERE JOB LIKE('%MANAGER%');
--5��
SELECT (MAX(salary)- MIN(SALARY))AS "DIFFERENCE" FROM EMPLOYEE;

--6��
SELECT JOB, MIN(SALARY) AS "�����޿�" FROM EMPLOYEE WHERE MANAGER IS NOT NULL 
GROUP BY JOB HAVING NOT MIN(SALARY)<2000 ORDER BY AVG(SALARY) DESC;

--7��
SELECT DNO, COUNT(JOB), ROUND(AVG(SALARY),2) FROM employee GROUP BY DNO ORDER BY DNO ASC;

--8��
