-- case
-- data type 
-- string function , round
  

use employees;
select emp_no , monthly_salary from 
(select emp_no, salary/12 as monthly_salary from salaries) as ms limit 5; 


use sakila;
select sum(amount) , film_id
from payment join rental using(rental_id)
join inventory using (inventory_id)
join film using (film_id) group by film_id;

use sakila;
select payment_id,rental_id,amount from payment;
select 
case 
when rental_id = 75 then "xyz"
when rental_id between 1000 and  then "xyz"
end "new",
payment_id,amount from payment;

select floor(192.16) from dual;
select round(147.439,-2) from dual;
select round(677.439,-3) from dual;

select mod(7,3) from dual;
select truncate(123.432,-2) from dual; -- - krenge to round of karta hai 


use employees;
-- get first name and full name where bith year is < 10003 where and hire year is < 10005 
-- get the information of those user where the hire year is < aman all the hire year of  10003 se 10007
-- find out the empolyee num and dipartment num and the departamrnt name of thise user who  has work in my company for miore then 28 years 
-- find out the empolyee num and the name of empliyee and the next working from date colam 
-- find out the employee num department num dipartment name and the year the total num he has work in to your company only for those user where the total num of month of working < 33
-- forgen key one table to another table