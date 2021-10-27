create user "green" IDENTIFIED by "green1234"
DEFAULT tablespace "USERS";

GRANT "CONNECT" TO "green";
GRANT "RESOURCE" TO "green";

GRANT "DBA" TO "green";

commit;

create table productsTbl(
productid char(10),
productName nvarchar2(20) CONSTRAINT pk_productsTbl_proname NOT NULL,
price number CONSTRAINT pk_productsTbl_price NOT NULL,
amount char(10) CONSTRAINT pk_productsTbl_amount NOT NULL,
CONSTRAINT pk_productsTbl_proid PRIMARY KEY(productid) );

create table customerTbl(
customerid char(10),
customerName nvarchar2(20) CONSTRAINT pk_customerTbl_cusname NOT NULL,
customerAddr nvarchar2(100) CONSTRAINT pk_customerTbl_cusAddr NOT NULL,
customerContact char(11) CONSTRAINT pk_customerTbl_cuscontact NOT NULL,
CONSTRAINT pk_customerTbl_cusid PRIMARY KEY(customerid) );


create table tradeTbl(
tradeNo char(10),
productid char(10),
customerid char(10), 
tradeAmount number CONSTRAINT pk_tradeTbl_tradeAmount  NOT NULL,
CONSTRAINT pk_tradeTbl_tradeNo PRIMARY KEY(tradeNo),
constraint fk_productsTbl_tradeTbl foreign key(productid) references productsTbl(productid),
constraint fk_customerTbl_tradeTbl foreign key(customerid) references customerTbl(customerid));


insert into productsTbl--1��
values('B001','JAVA',20000,100);
insert into productsTbl--2��
values('B002','HTML&CSS',15000,150);
insert into productsTbl--3��
values('B003','Python',17500,200);
insert into productsTbl--4��
values('B004','javaScript',17000,150);
insert into productsTbl--5��
values('B005','Oracle',25000,75);

insert into customerTbl--1��
values('S001','����IT�׷�','��⵵ ������','01012345678');
insert into customerTbl--2��
values('N001','�������Ʈ����','��⵵ ȭ����','01045679365');
insert into customerTbl--3��
values('K001','���� IDC ����','��⵵ ��õ��','01014753695');
insert into customerTbl--4��
values('K002','�����������','��⵵ �����','01098753215');
insert into customerTbl--5��
values('S002','���� ����Ʈ','��⵵ ���ν�','01012357895');


insert into tradetbl--1��
values('T001','B003','S002',30);
insert into tradetbl--2��
values('T002','B003','N001',40);
insert into tradetbl--3��
values('T003','B004','S002',20);
insert into tradetbl--4��
values('T004','B005','N001',40);
insert into tradetbl--5��
values('T005','B004','K002',50);




select * from productstbl;
SELECT * FROM customertbl;
SELECT * FROM tradetbl;

commit;
