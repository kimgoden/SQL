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

--날짜 삽입하기
INSERT INTO employee (ENO,ENAME, HIREDATE)
VALUES(8800,NULL,'2020/12/31');
--TO_DATE함수 사용가능
INSERT INTO employee (ENO,ENAME, HIREDATE)
VALUES(8900,NULL,TO_DATE('2020-12-31','YYYY-MM-DD'));
INSERT INTO employee (ENO, ENAME, HIREDATE)
VALUES(8950,NULL,SYSDATE);
--데이터 복사
--데이터 복제
CREATE TABLE EMP2
AS SELECT * FROM employee WHERE 0=1;
--다중행 입력기능으로 원래 테이블의 데이터를 가져오는 방법
INSERT INTO EMP2
SELECT * FROM employee; 

SELECT * FROM EMP2;

--업데이트 사용법
CREATE TABLE EMP3
AS SELECT
    *
FROM employee;
--실습용 테이블 생성
UPDATE EMP3 SET ENAME = 'RUNA',JOB='MANAGER' WHERE ENO  = 8500;
--ENO 가 8500인 사원 이름을 RUNA로 바꾸고 담당업무를 메니저로 바꿔준다
UPDATE EMP3 SET COMMISSION = 500;
--모든 사원의 커미션을 500으로 바꿔준다
UPDATE EMP3 SET SALARY =(SELECT LOSAL FROM salgrade WHERE GRADE=1)
WHERE DNO IN NULL;
--DNO가 NULL인 사원의 급여을 급여등급 1등급, 최저급여로 맞추어 변경한다.

UPDATE EMP3 SET DNO=(SELECT DNO FROM department WHERE DNAME='OPERATIONS'),
MANAGER = (SELECT ENO FROM EMP3 WHERE JOB = 'PRESIDENT')
WHERE ENAME IS NULL;
--이름이 없는 사원의 소속을 OPERATIONS로 옮기고 담당업무를 프레지던트의 직속 부하직원으로 배치한다.


--인서트문 예제
--1번
CREATE TABLE EMP_INSERT
AS SELECT * FROM employee;

--2번
insert into emp_insert (eno,ename, job, manager, hiredate, salary, commission, dno)
values(8121, 'JUN', 'CEO', NULL, SYSDATE, 10000,50000,10);

--3번
insert into emp_insert (eno,ename, job, manager, hiredate, salary, commission, dno)
values(8210, 'SIDJUN', 'ANALYST',8121, TO_DATE('2021-09-30','YYYY-MM-DD'), 1000,500,10);

--4번
Create Table EMP_COPY AS ( select * from employee );

--5번
UPDATE EMP_COPY SET ENO ='10' WHERE ENO= 7788; 

--6QJS
