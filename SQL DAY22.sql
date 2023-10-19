use sakila;
drop table test;

commit;

create table test(id int, name varchar(20));
insert into  test values(10,"hey"),(20,"abc"),(30,"def");

select * from test;

start transaction;
update test set name="tushar" where id=10;
savepoint  test_name_tushar;

update test set name="new abc" where id=20;
savepoint  test_name_newabc;

insert into test values(50,"aman");
savepoint  test_name_insert;

rollback to test_name_newabc;

rollback;
select * from test;


commit;
select * from test;

-- isolation level
-- how to create view ( all all types )

-- indexing
-- type of indexing

-- dcl