--陥丞廃 敗呪級
SELECT ASCII('T'), CHR(84), ASCIISTR('探'), UNISTR('CC9C') FROM DUAL;

SELECT LENGTH('廃越'), LENGTH('AB'), LENGTHB('廃越'),LENGTHB('AB'),LENGTHC('廃越'),LENGTHC('AB') FROM DUAL;

SELECT CONCAT('戚依精','神虞適戚陥'),'戚依精'||'神虞適'||'戚陥' FROM DUAL;

SELECT INSTR('戚依戚 ORACLE戚陥.  戚依亀 神虞適戚陥.','戚依')FROM DUAL;
SELECT INSTR('戚依戚 ORACLE戚陥.  戚依亀 神虞適戚陥.','戚依',16)FROM DUAL;
SELECT INSTRB('戚依戚 ORACLE戚陥.  戚依亀 神虞適戚陥.','戚依',2)FROM DUAL;

SELECT LOWER ('abcdEFGH'), UPPER('abcdEFGH'), INITCAP('THIS Is ORACLe') from dual;
--企庚切研 社庚切稽            社庚切研 企庚切稽       蒋越切幻 企庚切稽 痕井背層陥

select replace('戚依戚 oracle戚陥','戚依戚','This is') from dual;
--This is研 戚依戚 稽 帖発背爽澗 依戚陥
select translate('戚依戚 oracle戚陥','戚依','ab') from dual;
--戚=a, 依=b稽 郊蚊爽壱 背雁馬走 省澗 依精 陥 稽 蟹紳陥
select ename, lower(ename),job,initcap(job) from employee;
--1伸精 据沙, 2伸精 社庚切稽 痕井吉 戚硯, 3伸精 送穣 据沙, 4伸精 蒋越切幻 企庚切稽 痕井
select eno, ename,dno from employee where ename='scott';--牌鯉拭辞 戚硯戚 企庚切稽 鞠嬢赤奄 凶庚拭 窒径鞠走 省澗陥
select eno, ename,dno from employee where ename=UPPER('scott');
--牌鯉拭 戚硯戚 企庚切戚奄 凶庚拭 社庚切稽 旋精 誤暢聖 企庚切稽 痕井馬食 析帖獣轍陥.
select eno, ename,dno from employee where INITCAP(ename)='Scott';
--ENAME琶球拭 莫縦拭 限惟 切疑 痕井背爽澗 敗呪研 潤辞 限仲層陥


SELECT SUBSTR('企廃偽験幻室硲',3,5)FROM DUAL;
--3腰属 越切採斗 5越切猿走 窒径
SELECT REVERSE('oracle')from dual;
--越切 壕伸聖 鋼企稽 馬澗暗
select rpad('戚依戚',12,'庚')from dual;
--神献楕拭 '識楳鞠澗 庚姥',壕伸掩戚,'諮脊拝 庚切' 研 旋生檎 掩戚拭 限惟 庚切亜 級嬢娃陥
select RTRIM('       戚腰持精'), ltrim('          諺梅嬢遂せせせせせせ')from dual;
--rtrim精 神献楕拭 細壱 rtrim精 図楕拭 細澗陥
select TRIM('       戚腰持精'), trim('          諺梅嬢遂せせせせせせ')from dual;
--奄沙旋生稽 図楕舛慶稽 廃陥
select regexp_count('戚依戚 神虞適戚陥.','戚')from dual;
--'戚'税 姐呪研 蒋拭 庚舌拭辞 朝錘特背層陥
SELECT * FROM employee where substr(ename,-1,1)='N';
-- -1精 庚切伸税 是帖研 1精 越切税 滴奄研 蟹展浬陥. 原走厳 1越切亜 N昔 紫寓聖 窒径廃陥
SELECT * FROM employee where substr(HIREDATE,1,2)='87';
-- 固坦製 庚切亜 87昔 紫寓聖 窒径廃陥
SELECT LPAD(SALARY,10,'*') FROM employee;
SELECT RPAD(SALARY,10,'*') FROM employee;
--背雁 伸税 切軒呪研 妊薄廃陥

SELECT CEIL(4.7) FROM DUAL; --臣顕
SELECT FLOOR(4.7) FROM DUAL; --鎧顕
SELECT ROUND(4.7) FROM DUAL; --鋼臣顕
SELECT TRUNC(4.7) FROM DUAL; --獄顕
SELECT TRUNC(422222.7,-2) FROM DUAL;--TRUNC幻 切軒呪研 舛背匝呪 赤陥

SELECT ADD_MONTHS('2020-01-01',5), ADD_MONTHS(SYSDATE,-5) FROM DUAL;
--奄層 劾促拭 5研 鯵杉呪拭 希背層陥,    神潅 劾促奄層 鯵杉呪拭辞 5研 皐層陥
SELECT TO_DATE('2020-01-01')+5,SYSDATE-5 FROM DUAL;
--ADD研 床走 省壱 是人旭戚 希背匝 呪 赤陥,
SELECT CURRENT_DATE, SYSDATE, CURRENT_TIMESTAMP FROM DUAL;
--授辞企稽 薄仙 劾促, 薄仙劾促, 薄仙 劾促人 獣娃, 段 舘是猿走 妊薄背層陥
SELECT EXTRACT(YEAR FROM DATE '2019-06-27'), EXTRACT(DAY FROM SYSDATE) FROM DUAL;
--舛背遭 劾促拭辞 蓄窒馬澗 敗呪
SELECT LAST_DAY('2019-05-05') FROM DUAL;
--舛背遭 鰍亀 杉税 原走厳 劾聖 達焼爽澗 敗呪
SELECT NEXT_DAY('2020-01-03','杉推析'),NEXT_DAY(SYSDATE,'析推析') FROM DUAL;
--舛背遭 劾促拭 亜猿錘 推析税 劾促研 達澗 敗呪
SELECT MONTHS_BETWEEN(SYSDATE,'1985-02-17') FROM DUAL;
--砧 劾促 紫戚税 託研 姥馬澗 敗呪
SELECT HIREDATE, TRUNC(HIREDATE,'MONTH') FROM employee;
--脊紫劾促拭辞 析切研 穿採 01稽 限仲爽澗 敗呪
SELECT ROUND(SYSDATE-HIREDATE) AS "悦巷析呪" FROM employee;
--脊紫析稽採斗 薄仙猿走 析廃 奄娃聖 析呪稽 妊薄馬檎辞, 社呪繊 戚馬澗 鋼臣顕馬澗 敗呪
SELECT SYSDATE, NEXT_DAY(SYSDATE,'塘推析') FROM DUAL;
--神潅 劾促研 奄層生稽 陥製 推析戚 情薦昔走 達焼爽澗 敗呪
SELECT ENAME, HIREDATE, ADD_MONTHS(HIREDATE,6) FROM EMPLOYEE;
--送据級税 脊紫劾促拭辞 鯵杉呪拭 6聖 希背爽澗 敗呪
SELECT ENAME, SYSDATE, HIREDATE, TRUNC(MONTHS_BETWEEN(SYSDATE,HIREDATE)) FROM employee;
--走榎劾促稽採斗 脊紫析税 託戚聖 析呪稽 蟹展鎧澗 敗呪
SELECT ENAME, HIREDATE,LAST_DAY(HIREDATE) FROM employee;
--脊紫析税 鯵杉呪税 原走厳 析呪研 蟹展鎧澗 敗呪

SELECT ENAME, SALARY, COMMISSION, NVL(COMMISSION,0), SALARY*12+NVL(COMMISSION,0) FROM employee;
--朕耕芝戚 NULL析 井酔 0生稽 帖発背爽壱, 厭食X12廃 葵拭 朕耕芝聖 希背層 葵聖 窒径廃陥.
SELECT ENAME, SALARY, COMMISSION, NVL2(COMMISSION, SALARY*12+COMMISSION,SALARY*12) FROM employee;
--朕耕芝戚 NULL析井酔 尻裟聖 鋼発背爽壱, 焼諌井酔 尻裟+朕耕芝聖 窒径背層陥
SELECT NULLIF('A','A'), NULLIF('A','B') FROM DUAL;
--砧鯵税 旭精 葵戚 赤奄 凶庚拭 NULL,  砧鯵亜 陥献 葵戚奄 凶庚拭 湛腰属 A研 窒径
SELECT ENAME, SALARY, COMMISSION, COALESCE(COMMISSION,SALARY,0) FROM EMPLOYEE;
--
SELECT ENAME,DNO, DECODE(DNO, 10, 'ACCOUNTING', 
20,'RESEARCH', 
30,'SAELS', 
40,'OPERATIONS', 
'DEEAULT') AS DNAME FROM employee;
--DNO亜 10税 葵拭 魚虞 DNAME聖 仙舛慶背層陥.
SELECT ENAME,DNO, CASE WHEN 
DNO=10 THEN 'ACCOUNTING'
WHEN DNO=20 THEN 'RESEARCH'
WHEN DNO=30 THEN 'SAELS'
WHEN DNO=40 THEN 'OPERATIONS'
ELSE 'DEEAULT' 
END AS DNAME FROM employee;
--是税 森薦人 業旭精 奄管聖 廃陥

--森薦
--1腰
SELECT SUBSTR(HIREDATE,0,5) FROM employee;
--2腰
SELECT * FROM employee where substr(HIREDATE,4,2)='04';
--3腰
SELECT * FROM employee WHERE MOD(ENO,2) = 0;
--4腰
