--다양한 함수들
SELECT ASCII('T'), CHR(84), ASCIISTR('천'), UNISTR('CC9C') FROM DUAL;

SELECT LENGTH('한글'), LENGTH('AB'), LENGTHB('한글'),LENGTHB('AB'),LENGTHC('한글'),LENGTHC('AB') FROM DUAL;

SELECT CONCAT('이것은','오라클이다'),'이것은'||'오라클'||'이다' FROM DUAL;

SELECT INSTR('이것이 ORACLE이다.  이것도 오라클이다.','이것')FROM DUAL;
SELECT INSTR('이것이 ORACLE이다.  이것도 오라클이다.','이것',16)FROM DUAL;
SELECT INSTRB('이것이 ORACLE이다.  이것도 오라클이다.','이것',2)FROM DUAL;

SELECT LOWER ('abcdEFGH'), UPPER('abcdEFGH'), INITCAP('THIS Is ORACLe') from dual;
--대문자를 소문자로            소문자를 대문자로       앞글자만 대문자로 변경해준다

select replace('이것이 oracle이다','이것이','This is') from dual;
--This is를 이것이 로 치환해주는 것이다
select translate('이것이 oracle이다','이것','ab') from dual;
--이=a, 것=b로 바꿔주고 해당하지 않는 것은 다 로 나온다
select ename, lower(ename),job,initcap(job) from employee;
--1열은 원본, 2열은 소문자로 변경된 이름, 3열은 직업 원본, 4열은 앞글자만 대문자로 변경
select eno, ename,dno from employee where ename='scott';--항목에서 이름이 대문자로 되어있기 때문에 출력되지 않는다
select eno, ename,dno from employee where ename=UPPER('scott');
--항목에 이름이 대문자이기 때문에 소문자로 적은 명칭을 대문자로 변경하여 일치시킨다.
select eno, ename,dno from employee where INITCAP(ename)='Scott';
--ENAME필드에 형식에 맞게 자동 변경해주는 함수를 써서 맞춰준다


SELECT SUBSTR('대한독립만세호',3,5)FROM DUAL;
--3번째 글자부터 5글자까지 출력
SELECT REVERSE('oracle')from dual;
--글자 배열을 반대로 하는거
select rpad('이것이',12,'문')from dual;
--오른쪽에 '선행되는 문구',배열길이,'삽입할 문자' 를 적으면 길이에 맞게 문자가 들어간다
select RTRIM('       이번생은'), ltrim('          망했어용ㅋㅋㅋㅋㅋㅋ')from dual;
--rtrim은 오른쪽에 붙고 rtrim은 왼쪽에 붙는다
select TRIM('       이번생은'), trim('          망했어용ㅋㅋㅋㅋㅋㅋ')from dual;
--기본적으로 왼쪽정렬로 한다
select regexp_count('이것이 오라클이다.','이')from dual;
--'이'의 갯수를 앞에 문장에서 카운팅해준다
SELECT * FROM employee where substr(ename,-1,1)='N';
-- -1은 문자열의 위치를 1은 글자의 크기를 나타낸다. 마지막 1글자가 N인 사람을 출력한다
SELECT * FROM employee where substr(HIREDATE,1,2)='87';
-- 맨처음 문자가 87인 사람을 출력한다
SELECT LPAD(SALARY,10,'*') FROM employee;
SELECT RPAD(SALARY,10,'*') FROM employee;
--해당 열의 자리수를 표현한다

SELECT CEIL(4.7) FROM DUAL; --올림
SELECT FLOOR(4.7) FROM DUAL; --내림
SELECT ROUND(4.7) FROM DUAL; --반올림
SELECT TRUNC(4.7) FROM DUAL; --버림
SELECT TRUNC(422222.7,-2) FROM DUAL;--TRUNC만 자리수를 정해줄수 있다

SELECT ADD_MONTHS('2020-01-01',5), ADD_MONTHS(SYSDATE,-5) FROM DUAL;
--기준 날짜에 5를 개월수에 더해준다,    오늘 날짜기준 개월수에서 5를 빼준다
SELECT TO_DATE('2020-01-01')+5,SYSDATE-5 FROM DUAL;
--ADD를 쓰지 않고 위와같이 더해줄 수 있다,
SELECT CURRENT_DATE, SYSDATE, CURRENT_TIMESTAMP FROM DUAL;
--순서대로 현재 날짜, 현재날짜, 현재 날짜와 시간, 초 단위까지 표현해준다
SELECT EXTRACT(YEAR FROM DATE '2019-06-27'), EXTRACT(DAY FROM SYSDATE) FROM DUAL;
--정해진 날짜에서 추출하는 함수
SELECT LAST_DAY('2019-05-05') FROM DUAL;
--정해진 년도 월의 마지막 날을 찾아주는 함수
SELECT NEXT_DAY('2020-01-03','월요일'),NEXT_DAY(SYSDATE,'일요일') FROM DUAL;
--정해진 날짜에 가까운 요일의 날짜를 찾는 함수
SELECT MONTHS_BETWEEN(SYSDATE,'1985-02-17') FROM DUAL;
--두 날짜 사이의 차를 구하는 함수
SELECT HIREDATE, TRUNC(HIREDATE,'MONTH') FROM employee;
--입사날짜에서 일자를 전부 01로 맞춰주는 함수
SELECT ROUND(SYSDATE-HIREDATE) AS "근무일수" FROM employee;
--입사일로부터 현재까지 일한 기간을 일수로 표현하면서, 소수점 이하는 반올림하는 함수
SELECT SYSDATE, NEXT_DAY(SYSDATE,'토요일') FROM DUAL;
--오늘 날짜를 기준으로 다음 요일이 언제인지 찾아주는 함수
SELECT ENAME, HIREDATE, ADD_MONTHS(HIREDATE,6) FROM EMPLOYEE;
--직원들의 입사날짜에서 개월수에 6을 더해주는 함수
SELECT ENAME, SYSDATE, HIREDATE, TRUNC(MONTHS_BETWEEN(SYSDATE,HIREDATE)) FROM employee;
--지금날짜로부터 입사일의 차이을 일수로 나타내는 함수
SELECT ENAME, HIREDATE,LAST_DAY(HIREDATE) FROM employee;
--입사일의 개월수의 마지막 일수를 나타내는 함수

SELECT ENAME, SALARY, COMMISSION, NVL(COMMISSION,0), SALARY*12+NVL(COMMISSION,0) FROM employee;
--커미션이 NULL일 경우 0으로 치환해주고, 급여X12한 값에 커미션을 더해준 값을 출력한다.
SELECT ENAME, SALARY, COMMISSION, NVL2(COMMISSION, SALARY*12+COMMISSION,SALARY*12) FROM employee;
--커미션이 NULL일경우 연봉을 반환해주고, 아닐경우 연봉+커미션을 출력해준다
SELECT NULLIF('A','A'), NULLIF('A','B') FROM DUAL;
--두개의 같은 값이 있기 때문에 NULL,  두개가 다른 값이기 때문에 첫번째 A를 출력
SELECT ENAME, SALARY, COMMISSION, COALESCE(COMMISSION,SALARY,0) FROM EMPLOYEE;
--
SELECT ENAME,DNO, DECODE(DNO, 10, 'ACCOUNTING', 
20,'RESEARCH', 
30,'SAELS', 
40,'OPERATIONS', 
'DEEAULT') AS DNAME FROM employee;
--DNO가 10의 값에 따라 DNAME을 재정렬해준다.
SELECT ENAME,DNO, CASE WHEN 
DNO=10 THEN 'ACCOUNTING'
WHEN DNO=20 THEN 'RESEARCH'
WHEN DNO=30 THEN 'SAELS'
WHEN DNO=40 THEN 'OPERATIONS'
ELSE 'DEEAULT' 
END AS DNAME FROM employee;
--위의 예제와 똑같은 기능을 한다

--예제
--1번
SELECT SUBSTR(HIREDATE,0,5) FROM employee;
--2번
SELECT * FROM employee where substr(HIREDATE,4,2)='04';
--3번
SELECT * FROM employee WHERE MOD(ENO,2) = 0;

