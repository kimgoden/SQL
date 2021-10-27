SELECT SUM(SALARY) AS "급여 총액",
ROUND(AVG(SALARY),2) AS "급여 평균", --소수점 자리수는 ROUND(함수이름(변수),자리숫) 형식, 반올림 하지 않을거면 TRUNC사용
MAX(SALARY) AS "급여 최대",
MIN(SALARY) AS "급여 최소"
FROM EMPLOYEE;

SELECT MAX(HIREDATE), MIN(HIREDATE) FROM EMPLOYEE;


SELECT COUNT(*) AS "사원의 총 수" FROM EMPLOYEE; --사원의 총 수

SELECT SUM(commission)AS "커미션 총액" FROM employee; -- 커미션 총액

SELECT COUNT(commission) AS "커미션을 받는 사원 수" FROM employee 
WHERE commission IS NOT NULL; 

SELECT JOB FROM employee ORDER BY JOB ASC;

SELECT COUNT(JOB) AS "직업의 수" FROM employee;
SELECT COUNT(DISTINCT JOB)  AS "직업의 종류" FROM employee; --테이블에 중복된 값을 제거한 갯수를 보여준다

SELECT TRUNC(AVG(SALARY),2) AS "급여 평균" FROM employee GROUP BY DNO;

SELECT DNO AS "부서번호", AVG(SALARY) AS "급여평균" FROM employee GROUP BY DNO;--부서명을 기준으로 그룹을 만들어서 급여 평균을 낸다

SELECT DNO, JOB, SUM(SALARY) FROM employee GROUP BY DNO,JOB ORDER BY DNO ASC, JOB ASC;
--부서와 직업을 그룹으로 묶고 부서랑 직업을 오름차순으로 정렬하고 급여의 총액을 나타낸다

SELECT JOB, SUM(SALARY) FROM employee GROUP BY JOB HAVING AVG(salary)>=2000;
--그룹함수의 결과에 조건을 주기 위해선 WHERE이 아닌 그룹바이+ HAVING 을 사용해야한다

--HAVING절 예제
SELECT DNO, MAX(SALARY) FROM employee GROUP BY DNO HAVING MAX(SALARY)>=3000;
--부서별 최고 급여가 3000이상인 부서의 번호와 최고급여 출력

SELECT JOB, COUNT(*) as "직종인원" , SUM(SALARY) FROM EMPLOYEE WHERE JOB NOT LIKE '%MANAGER%'
GROUP BY JOB HAVING SUM(SALARY) >=5000 ORDER BY SUM(salary);
--매니저를 제외하고 급여 총액이 5000이상인 담당 업무별 급여 총액과 해당인원

select round(max(avg(salary)),0) as "총급여" from employee GROUP BY dno;


--그룹함수 예제
--1번
select MAX(salary) as "Maximum",  min(salary) as "Minimun", sum(salary) as "SUM", ROUND(AVG(SALARY),0) AS  "Average"
from employee;

--2번
select job, MAX(salary) as "Maximum",  min(salary) as "Minimun", sum(salary) as "SUM",
ROUND(AVG(SALARY),0) AS  "Average" from employee GROUP BY JOB order by job;

--3번
SELECT JOB, COUNT(*)  AS "담당업무 중복 사원" FROM employee GROUP BY JOB;
--SELECT COUNT(*) FROM EMPLOYEE GROUP BY JOB ORDER BY JOB;

--4번
select count(DISTINCT MANAGER) as "COUNT(MANAGER)" FROM employee;
--SELECT COUNT(*) FROM EMPLOYEE WHERE JOB LIKE('%MANAGER%');
--5번
SELECT (MAX(salary)- MIN(SALARY))AS "DIFFERENCE" FROM EMPLOYEE;

--6번
SELECT JOB, MIN(SALARY) AS "최저급여" FROM EMPLOYEE WHERE MANAGER IS NOT NULL 
GROUP BY JOB HAVING NOT MIN(SALARY)<2000 ORDER BY AVG(SALARY) DESC;

--7번
SELECT DNO, COUNT(JOB), ROUND(AVG(SALARY),2) FROM employee GROUP BY DNO ORDER BY DNO ASC;
