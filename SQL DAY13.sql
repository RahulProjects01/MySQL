use employees;

show tables;

select * from employees;
select hire_date from employees where emp_no = 10003;
select * from employees where hire_date> "1986-08-28";
-- ek quary  ko chalana or dushri quary ko chalana 
(select hire_date from employees where emp_no = 10003);  -- () ka use ham vha karte hai jha hame data pahle niklavana ho 
select * from employees where hire_date > (select hire_date from employees where emp_no = 10003);
select hire_date from employees where first_name = "Georgi" and birth_date = "1953-09-02";

show tables;
select *  from titles;
-- subquary return 1 row => =,>,<,=>,=<
select title from titles where emp_no = 10001; 
select * from titles where title = (select title from titles where emp_no = 10001);
select * from titles where title =ANY (select title from titles where emp_no = 10001);

-- =ANY equivalent to all the result set value
-- >ANY greter then the minimum value of result set
-- <ANY grater then the maximimum value of result set 
 
select salary from salaries where emp_no = 10002;
select * from salaries  where salary = any (select salary from salaries where emp_no = 10002);
