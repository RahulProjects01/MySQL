-- alter
-- foregin key
-- constraints 
-- check-------
 drop table newP;
 create table newT(id int, name varchar(20), status boolean, secondary_name varchar(20), constraint sakila_newT_secName_check 
  check (reverse(secondary_name)=name ));
 insert into newT values(1,'pap',true,'pap');
 insert into newT values(1,"mohit",true,'sa');
 select * from newT;
 
 create table TVb(id int, P_price int, S_price int ,check(p_price < s_price) );
 insert into tvb values(1,1000,100000);
 select * from tvb;
 
 -- -----------foreign key--------------------------------------------------
   create table student_hobby(sid int primary key, hobby varchar(20));
   
 drop table student;
 create table student(registration int, sname varchar(20),sid int,
 constraint sakila_std_sid_fk 
 foreign key(sid) references student_hobby(sid) );
 
 desc student;
 desc student_hobby;
 
 insert into student_hobby values(1,'cricket');
  insert into student_hobby values(2,'tennis');
  
 insert into student values(10,'tushar',1);
  insert into student values(11,'aman',2);
  
  select * from student;
   select * from student_hobby;
   
   use test;
   drop table customer;
   create table customer(id int primary key ,name varchar(20), city varchar(20) ,country varchar(20) ,constraint abc unique(country,city));
   

 create table country(c_id int ,city varchar(20), country varchar(20) , 
 foreign key (country,city)
 references customer(country,city));
   
   -- alter ---------------------------------------------------------
create table companies(id int);
insert into companies values(10);

-- add table---------------
alter table companies
add column phone1 varchar(20) default 0;

select * from companies;
   
   alter table companies
add column employee_count varchar(20) not null;
   
   -- alter--drop table-----------------------------
   alter table companies drop employee_count;
   
   -- rename table--------------------------
   rename table companies to newcompany;
   select * from newcompany;
   
      rename table newcompany to companies;
   select * from companies;
   
   -- alter---rename column
     alter table companies
rename column phone1 to newphone;
   
desc companies;

-- change data type and column name  then use change
alter table companies
change newphone eid int;

-- change data type only
alter table companies
modify  eid varchar(10);
   
update companies set eid=null;
select * from companies;

-- set constraint
alter table companies
add primary key(id);

desc companies;

insert into companies values(10,1);

-- drop constraint
alter table companies
drop  primary key;


   
   
   -- create a table name as  customer id,c_name,order id
   -- using the alter statment make the customer-ID primary key WITH Auto increment
   
   -- add a new column as email 
   -- and the order id has the foreign key with relationship with order id