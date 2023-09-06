use test;
create table student(sid int ,email char(19));
select * from student;
insert into student values (2,null);
insert into student(sid ) values (2,null); -- not

create table student2(email char(10) default "hello"); -- put the defolt data 
select * from student2; 
-- not null

-- null ke upar koi bhi task parform karte hai to ushka koi fark nhi padta 
-- unique hamesha unique he consider he krega 
create table student4(sid int unique default 0,email char(10) default "okey");
insert into student4(email) values("ghj@");
select * from student3;

-- drop table employee1;
create table employee10(eid int primary key,ename char(10) );
insert into employee10 values(1,"ty");
insert into employee10 values(null,"ty"); -- errro because primary key ke andar null use nhi kar sakte, ishe uniquely identify karte hai 
insert into employee10 values(1,"ty"); -- ishme duplicate data bhi insert nhi kar sakte

-- home work -->
-- deffrent constrent ,check , foren key -> relation ko stablish karti hai 
-- int [(width)] [UNSIGNED] [ZEROFALL]
-- UNSIGNED --> POSITIVE NUMBER INSERT ONLY
-- int(21) --> ishka maatlab data kitna display hoga 
-- zerofill --> ye single value ke sath 0 ko add kar deta hai
-- unsigned --> ye single value ke sath 0 ko hata kar deta hai
create table ex3 (eid int(2) zerofill);
create table ex4 (eid int(2) unsigned);
insert into ex4 values (9);
select * from ex4;

-- int (4 byte)
-- bigint(8 byte)
create table ex5 (eid bigint(2) zerofill);
insert into ex5 values(323323432341234233-1);
select * from ex5;

-- tinyint ,smallint,meddiumint -------> learn
-- boolean ---> tinyint 

create table test_bool(i bool);
insert into test_bool values(true),(false);
insert into test_bool values(1),(2);
select * from test_bool; 


-- acid property in RDMS (create with blog)
-- how acid property are implement in rdbms
-- constraints





 