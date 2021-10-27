--서브 쿼리
select ename, salary from employee where salary > (SELECT salary from employee where ename='SCOTT');

--최소 급여를 받는 사원의 이름, 담당업무, 급여를 출력한다
SELECT ENAME, JOB, SALARY FROM employee WHERE SALARY = (SELECT MIN(salary) FROM employee);

--각 부서별 최소급여가 30번 부서의 최소 급여보다 큰 부서의 부서번호와 그때의 최소 급여를 출력
SELECT DNO, MIN(SALARY) FROM employee GROUP BY DNO HAVING MIN(salary) > 
(SELECT MIN(salary) FROM employee WHERE DNO = 30);

--부서별 최소 급여를 받는 사원의 번호와 이름을 출력하는 쿼리문
SELECT ENO, ENAME FROM employee WHERE salary IN--IN은 메인 쿼리의 비교조건에서 서브 쿼리와 하나라도 일치하면 WHERE절이 참이되게 한다
(SELECT MIN(SALARY) FROM employee GROUP BY DNO);

--직급이 셀러리맨이 아니면서 급여가 셀러리맨보다 낮은 사원을 출력
SELECT * FROM employee WHERE salary <
ANY(SELECT salary FROM employee WHERE JOB='SALESMAN')
AND JOB<>'SALESMAN';--이 엔드는 결과값에 셀러리맨의 값을 제외해준다
SELECT * FROM employee;
SELECT * FROM department;
--예제
--1번 사원번호가 7788인 사원과 담당업무가 같은 사원을 표시
select eno, ename, job from employee where job in (select job from employee where eno=7788);

--2번 사원번호가 7499인 사원보다 급여가 많은 사원 표시
select eno, ename, job, salary from employee where salary > any(select salary from employee where eno='7499');

--3번 최소 급여를 받는 사원을 표시
SELECT ENAME, JOB, SALARY FROM employee WHERE SALARY = (SELECT MIN(salary) FROM employee);

--4번 평균 급여가 가장 적은 엄무를 찾아 직급과 평균급여를 표시
select job, trunc(avg(salary),1) from employee GROUP BY job HAVING avg(salary) 
= (SELECT MIN(avg(salary)) FROM employee GROUP BY job);

--5번 각 부서의 최소급여를 받는 사원이름,급여, 부서번호를 표시하세여
select ename, dno, salary from employee where salary in (select min(salary)from employee GROUP by dno);

--6번 담당 업무 = analyst <x analyst =x 인 사원을 표시하세요
SELECT * FROM employee where salary < ANY(SELECT salary FROM employee WHERE JOB='ANALYST') AND JOB<>'ANALYST';

--7번 매니저가 없는 사원의 이름을 표시하세요
SELECT ENAME, manager,JOB FROM employee WHERE ENAME = (SELECT ENAME FROM employee WHERE MANAGER IS NULL);

--8번 매니저가 있는 사원의 이름을 표시하세요
SELECT ENAME, manager,JOB FROM employee WHERE ENAME in (SELECT ENAME FROM employee WHERE MANAGER IS NOT NULL);

--9번 BLAKE와 동일한 부서에 속한 사원의 이름과 입사일을 표시하세요
SELECT * FROM employee WHERE DNO = ANY(SELECT DNO FROM employee WHERE ENAME = 'BLAKE') AND ENAME<>'BLAKE';

--10번 급여가 평균보다 많은 사원들의 사원번호와 이름을 급여를 기준으로 오름차순으로 표시하세요
SELECT ENAME, ENO, SALARY FROM EMPLOYEE WHERE SALARY > (SELECT TRUNC(AVG(SALARY),0) FROM EMPLOYEE)
ORDER BY salary;

--11번 이름에 K가 포함된 사원과 같은 부서에서 일하는 사원의 사번,이름을 표시하세요
SELECT ENO, ENAME  FROM employee WHERE DNO IN (SELECT DNO FROM employee WHERE ENAME LIKE '%K%');

--12번 부서위치가 DALLAS인 사원의 이름과 부서번호, 업무를 표시하세요
SELECT ENAME, DNO, JOB FROM employee WHERE DNO = (SELECT DNO FROM department WHERE loc = 'DALLAS');

--13번 KING에게 보고하는 사원의 이름,급여를 표시하세요
SELECT ENAME, SALARY FROM employee WHERE manager = (SELECT ENO FROM employee WHERE ename = 'KING');

--14번 RESEARCH부서의 사원에 대한 부서번호,사원번호, 및 업무를 출력하세요
SELECT DNO, ENAME, JOB FROM employee WHERE DNO = (SELECT DNO FROM department WHERE DNAME = 'RESEARCH');

--15번 평균 급여보다 많은 급여를 받고, 이름에 M이 포함된 사원과 같은 부서에서 근무하는 사원의 사번,이름,급여를 출력하세요
SELECT ENAME, ENO, salary FROM employee WHERE salary > (SELECT ROUND(AVG(salary),0) FROM employee)
AND DNO IN (SELECT DNO FROM employee WHERE ENAME LIKE '%M%');

--16번 평균 급여가 가장 적은 업무를 찾으시오
select job,avg(salary) from employee group by job having avg(salary) = 
(select min(avg(salary)) from employee GROUP BY job);

--17번 부하직원을 가진 사원의 사원번호와 이름을 출력하세요
SELECT ENAME, ENO FROM employee WHERE ENO IN (SELECT MANAGER FROM EMPLOYEE WHERE MANAGER IS NOT NULL); 