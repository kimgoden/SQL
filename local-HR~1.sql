SELECT ENAME, HIREDATE, TO_CHAR(HIREDATE, 'YY-MM'), TO_CHAR(HIREDATE,
'YYYY/MM/DD DAY') FROM employee;

SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD, HH24:MI:SS') FROM DUAL;

SELECT ENAME, TO_CHAR(SALARY, 'L999,999') FROM employee;

select ename, hirEdate, to_char(hiredate, 'YY-MM'), to_char(hiredate, 'YYYY//MM/DD DAY')
FROM EMPLOYEE;

SLECET TO_CHAR(SYSDATE, 'YYYY/MM/DD, HH24:MI:SS') FROM DAUL;

SELECT ENAME, TO_CHAR(SALARY, 'L999,999') FROM EMPLOYEE;

SELECT TO_NUMBER('100,000', '999,999')-TO_NUMBER('50,000','999,999')FROM DUAL; --Ư�� �����͸� ���������� ��ȯ
--������ ���̺��� ���� ���� �� ��� DUAL�� �̿��� ������ ���̺��� ������ش�