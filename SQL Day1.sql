use sakila;

select database();

show tables;
show columns from actor_info;
desc actor;
select * from actor;
select * from sakila.actor;

select name from sakila.language;
select * from language where name = "English";
select * from language where language_id != 3;
select * from language where language_id <> 3;
select * from language where name > 'i'; 
select first_name from actor where first_name > 'bett';
select * from film;
select * from film where title like '%';
select * from film where title like 'A%R';
select * from film where title like '%DINOSAUR';
select * from film where title like '% DINOSAUR %';
select * from film where title like '% FAMAILY/ %';
select * from film where description like '% drama %';
select * from film where description like 'A%les';
select * from film where title like 'A_%';
select * from film where title like 'A_E%';
select * from film where title like '_c%';
select * from film where title like '%AN';
select * from film where title like '____A%';
select * from film where title like '_F_I%EGG';
select * from film where title like '__A%';
select title,film_id,release_year, description from film;





















