use sakila;

select * from test;
commit;
drop table test;



create table test(id int, name varchar(20));
insert into  test values(10,"hey"),(20,"abc"),(30,"def");


start transaction;
update test set name="tushar" where id=10;

savepoint  test_name_tushar;

update test set name="new abc" where id=20;
savepoint  test_name_newabc;

rollback;
select * from test;


commit;
select * from test;