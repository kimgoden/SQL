DROP TABLE EMPLOYEE;
DROP TABLE DEPARTMENT;
DROP TABLE SALGRADE;
CREATE TABLE DEPARTMENT
        (DNO NUMBER(2) CONSTRAINT PK_DEPT PRIMARY KEY,
         DNAME VARCHAR2(14),
	 LOC   VARCHAR2(13) ) ;
CREATE TABLE EMPLOYEE 
        (ENO NUMBER(4) CONSTRAINT PK_EMP PRIMARY KEY,
	 ENAME VARCHAR2(10),
 	 JOB   VARCHAR2(9),
	 MANAGER  NUMBER(4),
	 HIREDATE DATE,
	 SALARY NUMBER(7,2),
	 COMMISSION NUMBER(7,2),
	 DNO NUMBER(2) CONSTRAINT FK_DNO REFERENCES DEPARTMENT);
CREATE TABLE SALGRADE
        (GRADE NUMBER,
	 LOSAL NUMBER,
	 HISAL NUMBER );
     INSERT INTO DEPARTMENT VALUES (10,'ACCOUNTING','NEW YORK');
INSERT INTO DEPARTMENT VALUES (20,'RESEARCH','DALLAS');
INSERT INTO DEPARTMENT VALUES (30,'SALES','CHICAGO');
INSERT INTO DEPARTMENT VALUES (40,'OPERATIONS','BOSTON');

INSERT INTO EMPLOYEE VALUES
(7369,'SMITH','CLERK',    7902,to_date('17-12-1980','dd-mm-yyyy'),800,NULL,20);
INSERT INTO EMPLOYEE VALUES
(7499,'ALLEN','SALESMAN', 7698,to_date('20-2-1981', 'dd-mm-yyyy'),1600,300,30);
INSERT INTO EMPLOYEE VALUES
(7521,'WARD','SALESMAN',  7698,to_date('22-2-1981', 'dd-mm-yyyy'),1250,500,30);
INSERT INTO EMPLOYEE VALUES
(7566,'JONES','MANAGER',  7839,to_date('2-4-1981',  'dd-mm-yyyy'),2975,NULL,20);
INSERT INTO EMPLOYEE VALUES
(7654,'MARTIN','SALESMAN',7698,to_date('28-9-1981', 'dd-mm-yyyy'),1250,1400,30);
INSERT INTO EMPLOYEE VALUES
(7698,'BLAKE','MANAGER',  7839,to_date('1-5-1981',  'dd-mm-yyyy'),2850,NULL,30);
INSERT INTO EMPLOYEE VALUES
(7782,'CLARK','MANAGER',  7839,to_date('9-6-1981',  'dd-mm-yyyy'),2450,NULL,10);
INSERT INTO EMPLOYEE VALUES
(7788,'SCOTT','ANALYST',  7566,to_date('13-07-1987', 'dd-mm-yyyy'),3000,NULL,20);
INSERT INTO EMPLOYEE VALUES
(7839,'KING','PRESIDENT', NULL,to_date('17-11-1981','dd-mm-yyyy'),5000,NULL,10);
INSERT INTO EMPLOYEE VALUES
(7844,'TURNER','SALESMAN',7698,to_date('8-9-1981',  'dd-mm-yyyy'),1500,0,30);
INSERT INTO EMPLOYEE VALUES
(7876,'ADAMS','CLERK',    7788,to_date('13-07-1987', 'dd-mm-yyyy'),1100,NULL,20);
INSERT INTO EMPLOYEE VALUES
(7900,'JAMES','CLERK',    7698,to_date('3-12-1981', 'dd-mm-yyyy'),950,NULL,30);
INSERT INTO EMPLOYEE VALUES
(7902,'FORD','ANALYST',   7566,to_date('3-12-1981', 'dd-mm-yyyy'),3000,NULL,20);
INSERT INTO EMPLOYEE VALUES
(7934,'MILLER','CLERK',   7782,to_date('23-1-1982', 'dd-mm-yyyy'),1300,NULL,10);

INSERT INTO SALGRADE VALUES (1, 700,1200);
INSERT INTO SALGRADE VALUES (2,1201,1400);
INSERT INTO SALGRADE VALUES (3,1401,2000);
INSERT INTO SALGRADE VALUES (4,2001,3000);
INSERT INTO SALGRADE VALUES (5,3001,9999);


select * from employee; 
select * from department; 
select * from salgrade;



SELECT * from employee;
desc employee;
select * from employee where salary >= 1500;
select DISTINCT dno from employe;
select * from employee where job = 'ANALYST';
select * from employee where job = 'ANALYST';

SELECT eno, ename, salary from employee where ename=SCOTT;
SELECT eno, ename, salary from employee where ename='SCOTT';
SELECT eno, ename, salary from employee where ename>'SCOTT';
SELECT * FROM EMPLOYEE WHERE hiredate <= '1981.01.01';


select * from employee where dno=10 AND job='MANAGER';
select * from employee where dno=10 OR job='MANAGER';



SELECT * FROM employee
WHERE SALARY>=1000 AND SALARY<=1500;

SELECT * FROM employee
WHERE SALARY<1000 OR  SALARY>1500;

SELECT * FROM employee
WHERE commission=300 OR commission=500 OR commission=1400;

SELECT * FROM employee
WHERE salary not between 1000 and 1500;

SELECT * FROM employee
where hiredate between '1982-01-01' and '1982-12-31';

SELECT * FROM employee where commission in (300,500,1400);

SELECT * FROM employee where commission not in (300,500,1400);

SELECT * FROM employee WHERE ename LIKE 'F%';--이름이 F로 시작하는 사람

SELECT * FROM employee WHERE ename LIKE '%M%';--이름에 M이 들어가는사람

SELECT * FROM employee WHERE ename LIKE '%N';--마지막 글자가 N인사람

SELECT * FROM employee WHERE ename LIKE '_A%';--두번째 글자가 A인사람

SELECT * FROM employee WHERE ename LIKE '__A%';--세번째 글자가 A인 사람

SELECT * FROM employee WHERE ename NOT LIKE '%A%';--이름에 A가 안들어가는 사람

SELECT * FROM employee WHERE commission=NULL;
SELECT * FROM employee WHERE commission IS NULL;
SELECT * FROM employee WHERE commission IS NOT NULL;

SELECT * FROM employee ORDER BY ENAME ;--기본적으로 오름차순
SELECT * FROM employee ORDER BY ENAME ASC; --오름차순 지정
SELECT * FROM employee ORDER BY ENAME DESC; --내림차순 지정

SELECT * FROM employee ORDER BY salary; --급여 기준 오름차순
SELECT * FROM employee ORDER BY salary DESC; --급여 기준 내림차순

SELECT * FROM employee ORDER BY salary DESC, ENAME ASC;--급여를 기준으로 1차 내림차순으로 정렬하고, 
--동일한 급여일 경우 이름을 기준으로 오름차순을 해준다
SELECT * FROM employee;
--CH02 1번 예제
SELECT ENAME, SALARY, SALARY+300 FROM employee;

--CH02 2번 예제
SELECT ENAME, SALARY, SALARY*12+100 FROM employee
ORDER BY salary*12+100 DESC;

--CH02 3번 예제
SELECT ENAME, SALARY FROM employee WHERE salary>2000 ORDER BY SALARY DESC;

--CH02 4번 예제
SELECT ENO, ENAME,DNO FROM employee WHERE ENO LIKE '7788';

--CH02 5번 예제
SELECT ENAME, SALARY FROM employee WHERE SALARY NOT BETWEEN 2000 AND 3000;

--CH02 6번 예제
SELECT ename, job,hiredate FroM employee where hiredate between '81-02-20' and '81-05-01';

--CH02 7번 예제
select ename, dno from employee where dno between '20' and '30' order by ename desc;

--CH02 8번 예제
select ename, dno, salary from employee where salary between 2000 and  3000 and dno in(20,30) order by ename;

--CH02 9번 예제
select ename, hiredate from employee where hiredate like '%81%';

--CH02 10번 예제
select ename, job from employee where manager is null;

--CH02 11번 예제
select ename, salary, commission from employee where commission is not null order by salary desc , commission desc;

--CH02 12번 예제
SELECT * FROM employee where ename like '__R%';

--CH02 13번 예제
SELECT * FROM employee where ename like'%A%' AND ename like '%E%';

--CH02 14번 예제
SELECT ENAME, JOB, SALARY FROM employee WHERE JOB IN('CLERK','SALESMAN') 
AND salary NOT IN(1600,950,1300);

--CH02 15번 예제
SELECT ENAME, SALARY, commission FROM employee WHERE commission>=500;












