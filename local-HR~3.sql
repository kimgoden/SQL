--�پ��� �Լ���
SELECT ASCII('T'), CHR(84), ASCIISTR('õ'), UNISTR('CC9C') FROM DUAL;

SELECT LENGTH('�ѱ�'), LENGTH('AB'), LENGTHB('�ѱ�'),LENGTHB('AB'),LENGTHC('�ѱ�'),LENGTHC('AB') FROM DUAL;

SELECT CONCAT('�̰���','����Ŭ�̴�'),'�̰���'||'����Ŭ'||'�̴�' FROM DUAL;

SELECT INSTR('�̰��� ORACLE�̴�.  �̰͵� ����Ŭ�̴�.','�̰�')FROM DUAL;
SELECT INSTR('�̰��� ORACLE�̴�.  �̰͵� ����Ŭ�̴�.','�̰�',16)FROM DUAL;
SELECT INSTRB('�̰��� ORACLE�̴�.  �̰͵� ����Ŭ�̴�.','�̰�',2)FROM DUAL;

SELECT LOWER ('abcdEFGH'), UPPER('abcdEFGH'), INITCAP('THIS Is ORACLe') from dual;
--�빮�ڸ� �ҹ��ڷ�            �ҹ��ڸ� �빮�ڷ�       �ձ��ڸ� �빮�ڷ� �������ش�

select replace('�̰��� oracle�̴�','�̰���','This is') from dual;
--This is�� �̰��� �� ġȯ���ִ� ���̴�
select translate('�̰��� oracle�̴�','�̰�','ab') from dual;
--��=a, ��=b�� �ٲ��ְ� �ش����� �ʴ� ���� �� �� ���´�
select ename, lower(ename),job,initcap(job) from employee;
--1���� ����, 2���� �ҹ��ڷ� ����� �̸�, 3���� ���� ����, 4���� �ձ��ڸ� �빮�ڷ� ����
select eno, ename,dno from employee where ename='scott';--�׸񿡼� �̸��� �빮�ڷ� �Ǿ��ֱ� ������ ��µ��� �ʴ´�
select eno, ename,dno from employee where ename=UPPER('scott');
--�׸� �̸��� �빮���̱� ������ �ҹ��ڷ� ���� ��Ī�� �빮�ڷ� �����Ͽ� ��ġ��Ų��.
select eno, ename,dno from employee where INITCAP(ename)='Scott';
--ENAME�ʵ忡 ���Ŀ� �°� �ڵ� �������ִ� �Լ��� �Ἥ �����ش�


SELECT SUBSTR('���ѵ�������ȣ',3,5)FROM DUAL;
--3��° ���ں��� 5���ڱ��� ���
SELECT REVERSE('oracle')from dual;
--���� �迭�� �ݴ�� �ϴ°�
select rpad('�̰���',12,'��')from dual;
--�����ʿ� '����Ǵ� ����',�迭����,'������ ����' �� ������ ���̿� �°� ���ڰ� ����
select RTRIM('       �̹�����'), ltrim('          ���߾�뤻����������')from dual;
--rtrim�� �����ʿ� �ٰ� rtrim�� ���ʿ� �ٴ´�
select TRIM('       �̹�����'), trim('          ���߾�뤻����������')from dual;
--�⺻������ �������ķ� �Ѵ�
select regexp_count('�̰��� ����Ŭ�̴�.','��')from dual;
--'��'�� ������ �տ� ���忡�� ī�������ش�
SELECT * FROM employee where substr(ename,-1,1)='N';
-- -1�� ���ڿ��� ��ġ�� 1�� ������ ũ�⸦ ��Ÿ����. ������ 1���ڰ� N�� ����� ����Ѵ�
SELECT * FROM employee where substr(HIREDATE,1,2)='87';
-- ��ó�� ���ڰ� 87�� ����� ����Ѵ�
SELECT LPAD(SALARY,10,'*') FROM employee;
SELECT RPAD(SALARY,10,'*') FROM employee;
--�ش� ���� �ڸ����� ǥ���Ѵ�

SELECT CEIL(4.7) FROM DUAL; --�ø�
SELECT FLOOR(4.7) FROM DUAL; --����
SELECT ROUND(4.7) FROM DUAL; --�ݿø�
SELECT TRUNC(4.7) FROM DUAL; --����
SELECT TRUNC(422222.7,-2) FROM DUAL;--TRUNC�� �ڸ����� �����ټ� �ִ�

SELECT ADD_MONTHS('2020-01-01',5), ADD_MONTHS(SYSDATE,-5) FROM DUAL;
--���� ��¥�� 5�� �������� �����ش�,    ���� ��¥���� ���������� 5�� ���ش�
SELECT TO_DATE('2020-01-01')+5,SYSDATE-5 FROM DUAL;
--ADD�� ���� �ʰ� ���Ͱ��� ������ �� �ִ�,
SELECT CURRENT_DATE, SYSDATE, CURRENT_TIMESTAMP FROM DUAL;
--������� ���� ��¥, ���糯¥, ���� ��¥�� �ð�, �� �������� ǥ�����ش�
SELECT EXTRACT(YEAR FROM DATE '2019-06-27'), EXTRACT(DAY FROM SYSDATE) FROM DUAL;
--������ ��¥���� �����ϴ� �Լ�
SELECT LAST_DAY('2019-05-05') FROM DUAL;
--������ �⵵ ���� ������ ���� ã���ִ� �Լ�
SELECT NEXT_DAY('2020-01-03','������'),NEXT_DAY(SYSDATE,'�Ͽ���') FROM DUAL;
--������ ��¥�� ����� ������ ��¥�� ã�� �Լ�
SELECT MONTHS_BETWEEN(SYSDATE,'1985-02-17') FROM DUAL;
--�� ��¥ ������ ���� ���ϴ� �Լ�
SELECT HIREDATE, TRUNC(HIREDATE,'MONTH') FROM employee;
--�Ի糯¥���� ���ڸ� ���� 01�� �����ִ� �Լ�
SELECT ROUND(SYSDATE-HIREDATE) AS "�ٹ��ϼ�" FROM employee;
--�Ի��Ϸκ��� ������� ���� �Ⱓ�� �ϼ��� ǥ���ϸ鼭, �Ҽ��� ���ϴ� �ݿø��ϴ� �Լ�
SELECT SYSDATE, NEXT_DAY(SYSDATE,'�����') FROM DUAL;
--���� ��¥�� �������� ���� ������ �������� ã���ִ� �Լ�
SELECT ENAME, HIREDATE, ADD_MONTHS(HIREDATE,6) FROM EMPLOYEE;
--�������� �Ի糯¥���� �������� 6�� �����ִ� �Լ�
SELECT ENAME, SYSDATE, HIREDATE, TRUNC(MONTHS_BETWEEN(SYSDATE,HIREDATE)) FROM employee;
--���ݳ�¥�κ��� �Ի����� ������ �ϼ��� ��Ÿ���� �Լ�
SELECT ENAME, HIREDATE,LAST_DAY(HIREDATE) FROM employee;
--�Ի����� �������� ������ �ϼ��� ��Ÿ���� �Լ�

SELECT ENAME, SALARY, COMMISSION, NVL(COMMISSION,0), SALARY*12+NVL(COMMISSION,0) FROM employee;
--Ŀ�̼��� NULL�� ��� 0���� ġȯ���ְ�, �޿�X12�� ���� Ŀ�̼��� ������ ���� ����Ѵ�.
SELECT ENAME, SALARY, COMMISSION, NVL2(COMMISSION, SALARY*12+COMMISSION,SALARY*12) FROM employee;
--Ŀ�̼��� NULL�ϰ�� ������ ��ȯ���ְ�, �ƴҰ�� ����+Ŀ�̼��� ������ش�
SELECT NULLIF('A','A'), NULLIF('A','B') FROM DUAL;
--�ΰ��� ���� ���� �ֱ� ������ NULL,  �ΰ��� �ٸ� ���̱� ������ ù��° A�� ���
SELECT ENAME, SALARY, COMMISSION, COALESCE(COMMISSION,SALARY,0) FROM EMPLOYEE;
--
SELECT ENAME,DNO, DECODE(DNO, 10, 'ACCOUNTING', 
20,'RESEARCH', 
30,'SAELS', 
40,'OPERATIONS', 
'DEEAULT') AS DNAME FROM employee;
--DNO�� 10�� ���� ���� DNAME�� ���������ش�.
SELECT ENAME,DNO, CASE WHEN 
DNO=10 THEN 'ACCOUNTING'
WHEN DNO=20 THEN 'RESEARCH'
WHEN DNO=30 THEN 'SAELS'
WHEN DNO=40 THEN 'OPERATIONS'
ELSE 'DEEAULT' 
END AS DNAME FROM employee;
--���� ������ �Ȱ��� ����� �Ѵ�

--����
--1��
SELECT SUBSTR(HIREDATE,0,5) FROM employee;
--2��
SELECT * FROM employee where substr(HIREDATE,4,2)='04';
--3��
SELECT * FROM employee WHERE MOD(ENO,2) = 0;
--4��
