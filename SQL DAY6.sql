create database sakila;
use sakila;
desc language;
select * from language;

insert into language values (14,"sanshacrat",now());
select * from language;
insert into language values (15,"Chaina",now());
insert ignore into language values (16,"Arabic",now()); 
insert ignore into language values (18,"Rassin",now(),23);
insert into language (language_id,name,last_update ) values (19,"rewre",now());
insert into language (language_id,name,last_update ) values (now(),"20","tre"); -- this is wrong sequance 
select * from language;
insert into language (last_update,name)values (now(),"sdf");
select * from language;
insert into language values(21,"we1",now()),(22,"we2",now()),(23,"we3",now()),(24,"we4",now());
desc language;
select * from language;
insert into language set name  = "ABC";
select * from Language;
desc language;

create database test;
create database if not exists test;  -- best way of writing & create databases 
use test;
show tables;
-- ddl statement create => table,index,view
create table employee2(eid int  ,ename char(90) ,email char(89));
show tables;
desc employee; -- show the employee table 
insert into employee2 values (14,"Rahul","Srahulb6@gmail.com");
insert into employee2 values (14,"Rahul","Srahulb6@gmail.com");

create table employee6(id int default 0 , ename char(20));
insert into employee6 values(null,"sdf");
desc employee6;
show tables;
select * from employee6;

create table test4(id int , tname char(20),roll int);
insert into test4 values(1,"Rahul",2322);
update test4 
set id = 11,tname = "Raju" , roll=102
where id = 1;
select * from test4;