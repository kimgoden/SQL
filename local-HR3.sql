SELECT
    *
FROM tab;
select * from member;

create table member(
    name varchar2(10) primary key,
    userid varchar2(10),
    userpwd varchar2(10),
    email varchar2(20),
    phone char(13),
    admin number(1) default 0  --0:�����, 1:������
);

select * from member;

insert into member 
values ('��浿','ko','1234','ko@naver.com','010-1234-5678',0);
insert into member 
values ('�ڱ浿','park','1234','park@naver.com','010-1234-5678',0);
insert into member 
values ('�̱浿','lee','1234','lee@naver.com','010-1234-5678',1);
insert into member 
values ('��浿','jang','1234','jang@naver.com','010-1234-5678',0);
insert into member 
values ('ȫ�浿','hong','1234','ko@naver.com','010-1234-5678',0);
commit;

select * from member;
select * from member;

drop table member;

create table member(
 name varchar2(10) primary key,
 address varchar2(10),
 ssn char(15)
 );
 
 insert into member 
values ('DUKE','SEOUL','970224-1039234');
insert into member 
values ('PORORO','PUSAN','001222-1038782');
insert into member 
values ('CANDY','DAEJEON','981221-1829192');
commit;
select * from member;


