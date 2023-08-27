use sakila;


-- logical and or not

select * from actor;
select * from actor where first_name="nick"
or actor_id=3;

select * from actor where first_name="nick"
and actor_id=3;

show tables;
select * from actor_info where film_info  like "animation%"
and first_name="goldie";
-- ese bhi likh sakte hai 
select * from actor_info where film_info  like "animation%"
and first_name like "goldie"; 

select * from actor_info where film_info  like "animation%"
and first_name = "goldie1"
or first_name = "nick";

-- pahle and vali condition chalegi, fir or vali condition chalegi

select category,rating,title from film_list where category like "sci-fi"
or category like "family" 
and rating like 'pg' ;

select category,rating,title from film_list 
where (category like "sci-fi"
or category like "family" )
and rating like 'pg' ;
-- () hmari prirotity set  karte hai ishhse, ham pahle kisi bhi condition ko check karva sakte hai


select 2+2*3;
select (2+2)*3;

select * from actor where actor_id between 2 and 5; 
-- write this too type
select * from actor where actor_id >= 2 and actor_id<=5;

select * from actor where first_name>="D" between 'b' and 'r';
-- /
select * from actor where first_name>="D";

select * from actor where actor_id=1 or actor_id = 5;
-- /
select * from actor where actor_id in (1,5);

select * from actor where not(actor_id=1);

select * from actor where


 




 


