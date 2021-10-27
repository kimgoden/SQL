--���� ����
select ename, salary from employee where salary > (SELECT salary from employee where ename='SCOTT');

--�ּ� �޿��� �޴� ����� �̸�, ������, �޿��� ����Ѵ�
SELECT ENAME, JOB, SALARY FROM employee WHERE SALARY = (SELECT MIN(salary) FROM employee);

--�� �μ��� �ּұ޿��� 30�� �μ��� �ּ� �޿����� ū �μ��� �μ���ȣ�� �׶��� �ּ� �޿��� ���
SELECT DNO, MIN(SALARY) FROM employee GROUP BY DNO HAVING MIN(salary) > 
(SELECT MIN(salary) FROM employee WHERE DNO = 30);

--�μ��� �ּ� �޿��� �޴� ����� ��ȣ�� �̸��� ����ϴ� ������
SELECT ENO, ENAME FROM employee WHERE salary IN--IN�� ���� ������ �����ǿ��� ���� ������ �ϳ��� ��ġ�ϸ� WHERE���� ���̵ǰ� �Ѵ�
(SELECT MIN(SALARY) FROM employee GROUP BY DNO);

--������ ���������� �ƴϸ鼭 �޿��� �������Ǻ��� ���� ����� ���
SELECT * FROM employee WHERE salary <
ANY(SELECT salary FROM employee WHERE JOB='SALESMAN')
AND JOB<>'SALESMAN';--�� ����� ������� ���������� ���� �������ش�
SELECT * FROM employee;
SELECT * FROM department;
--����
--1�� �����ȣ�� 7788�� ����� �������� ���� ����� ǥ��
select eno, ename, job from employee where job in (select job from employee where eno=7788);

--2�� �����ȣ�� 7499�� ������� �޿��� ���� ��� ǥ��
select eno, ename, job, salary from employee where salary > any(select salary from employee where eno='7499');

--3�� �ּ� �޿��� �޴� ����� ǥ��
SELECT ENAME, JOB, SALARY FROM employee WHERE SALARY = (SELECT MIN(salary) FROM employee);

--4�� ��� �޿��� ���� ���� ������ ã�� ���ް� ��ձ޿��� ǥ��
select job, trunc(avg(salary),1) from employee GROUP BY job HAVING avg(salary) 
= (SELECT MIN(avg(salary)) FROM employee GROUP BY job);

--5�� �� �μ��� �ּұ޿��� �޴� ����̸�,�޿�, �μ���ȣ�� ǥ���ϼ���
select ename, dno, salary from employee where salary in (select min(salary)from employee GROUP by dno);

--6�� ��� ���� = analyst <x analyst =x �� ����� ǥ���ϼ���
SELECT * FROM employee where salary < ANY(SELECT salary FROM employee WHERE JOB='ANALYST') AND JOB<>'ANALYST';

--7�� �Ŵ����� ���� ����� �̸��� ǥ���ϼ���
SELECT ENAME, manager,JOB FROM employee WHERE ENAME = (SELECT ENAME FROM employee WHERE MANAGER IS NULL);

--8�� �Ŵ����� �ִ� ����� �̸��� ǥ���ϼ���
SELECT ENAME, manager,JOB FROM employee WHERE ENAME in (SELECT ENAME FROM employee WHERE MANAGER IS NOT NULL);

--9�� BLAKE�� ������ �μ��� ���� ����� �̸��� �Ի����� ǥ���ϼ���
SELECT * FROM employee WHERE DNO = ANY(SELECT DNO FROM employee WHERE ENAME = 'BLAKE') AND ENAME<>'BLAKE';

--10�� �޿��� ��պ��� ���� ������� �����ȣ�� �̸��� �޿��� �������� ������������ ǥ���ϼ���
SELECT ENAME, ENO, SALARY FROM EMPLOYEE WHERE SALARY > (SELECT TRUNC(AVG(SALARY),0) FROM EMPLOYEE)
ORDER BY salary;

--11�� �̸��� K�� ���Ե� ����� ���� �μ����� ���ϴ� ����� ���,�̸��� ǥ���ϼ���
SELECT ENO, ENAME  FROM employee WHERE DNO IN (SELECT DNO FROM employee WHERE ENAME LIKE '%K%');

--12�� �μ���ġ�� DALLAS�� ����� �̸��� �μ���ȣ, ������ ǥ���ϼ���
SELECT ENAME, DNO, JOB FROM employee WHERE DNO = (SELECT DNO FROM department WHERE loc = 'DALLAS');

--13�� KING���� �����ϴ� ����� �̸�,�޿��� ǥ���ϼ���
SELECT ENAME, SALARY FROM employee WHERE manager = (SELECT ENO FROM employee WHERE ename = 'KING');

--14�� RESEARCH�μ��� ����� ���� �μ���ȣ,�����ȣ, �� ������ ����ϼ���
SELECT DNO, ENAME, JOB FROM employee WHERE DNO = (SELECT DNO FROM department WHERE DNAME = 'RESEARCH');

--15�� ��� �޿����� ���� �޿��� �ް�, �̸��� M�� ���Ե� ����� ���� �μ����� �ٹ��ϴ� ����� ���,�̸�,�޿��� ����ϼ���
SELECT ENAME, ENO, salary FROM employee WHERE salary > (SELECT ROUND(AVG(salary),0) FROM employee)
AND DNO IN (SELECT DNO FROM employee WHERE ENAME LIKE '%M%');

--16�� ��� �޿��� ���� ���� ������ ã���ÿ�
select job,avg(salary) from employee group by job having avg(salary) = 
(select min(avg(salary)) from employee GROUP BY job);

--17�� ���������� ���� ����� �����ȣ�� �̸��� ����ϼ���
SELECT ENAME, ENO FROM employee WHERE ENO IN (SELECT MANAGER FROM EMPLOYEE WHERE MANAGER IS NOT NULL); 