# alias name  -- ye hmara full name 
use sakila;
select first_name, concat ("MR",first_name) as fullname from actor;
-- write shorter qures
where fullname = "MR NICK"; -- but we cannot where close 
-- where,join,close

select first_name , length(first_name) from actor;
-- multipale row => output
-- similer => opration 
-- group => group opration

-- GROUP BY OPRATION =------->
show tables;
select* from film;

use world;
show tables;
select * from country;
desc country;
create table t1(id int , city varchar(20));
insert into t1 values (1,"hey");
insert into t1 values (2,"hey2");
insert into t1 values (1,"hey");
insert into t1 values (null,"hey3");
insert into t1 values (null,"hey4");

select count(*) from t1; -- count* ka matal ye esi value store krega jo null na ho 
select count(id) from t1;

select sum(id) from t1;

select distinct(city),id from t1; -- distrinct ye unique value he find karti hai , ishpe koi opration perfom nhi kar sakte 
select count( distinct(city))from t1;

select * from city where countrycode = "AFG";
select countrycode from city group by countrycode;
select countrycode,count(id) ,sum(population) as totalpopulation from city group by countrycode;

-- where close,joins  group by pe apply mhi hota hai,
--  group by ke sath me me ham having use karte hai  
-- having deta 
select * from city;
select region,continent,count(code) from country where continent = "europe" group by region,continent;
select continent , region from country where continent = "europe" group by continent, region;


