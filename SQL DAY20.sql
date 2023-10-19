use sakila;
drop table test;
desc test;

create table test(id int, name varchar(20));

insert into  test values(10,"hey"),(20,"abc"),(30,"def");
select * from sakila.test;

update test set name="tushar" where id=10;
select @@autocommit;

set autocommit=0;
select * from test;
update test set name="aman" where id=10;

update test set name1="12" where id=1;

set autocommit=0;


start transaction;
update test set name1="12" where id=1;
select * from sakila.test  ;


-- current autocommit state
select @@autocommit;