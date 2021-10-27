SELECT
    *
FROM tab;

create table item(
    name varchar2(20),
    price number(12),
    description varchar2(1000)
);
select * from item;

commit;

drop table item;