use employees;
select *from employees;
show tables;

-- Que. 1 

 select emp_no, first_name,last_name, concat(first_name," ",last_name)as fullname ,birth_date,hire_date from employees
 where year(birth_date)>(select year(birth_date) from employees where emp_no=10003 ) 
 and year(hire_date)<(select year(hire_date) from employees where emp_no=10005) ;
 
 -- Que. 2
 
 select *from employees where year(hire_date)>all(select year(hire_date) from employees where emp_no between 10003 and 10007);
 
 -- Que. 3
 
select  departments.dept_name ,dept_emp.emp_no, dept_emp.dept_no  from departments 
 inner join dept_emp  on dept_emp.dept_no=departments.dept_no
 where departments.dept_no in (select dept_no from dept_emp where  TIMESTAMPDIFF( year,from_date,CURRENT_TIMESTAMP())>28);
 
 select *,TIMESTAMPDIFF( year,from_date,CURRENT_TIMESTAMP()) from dept_emp ;
 
-- Que. 4

 select emp_no,dept_emp.dept_no, concat(first_name," ",last_name)as fullName,hire_date,
 ADDDATE(hire_date, INTERVAL 9-DAYOFWEEK(hire_date) day)as NextWorkingDate 
 from employees inner join dept_emp using(emp_no);
 
 -- Que. 5
 
select emp_no,dept_emp.dept_no,departments.dept_name,TIMESTAMPDIFF( month,hire_date,CURRENT_TIMESTAMP()) as months
from employees inner join dept_emp
using (emp_no) inner join departments using(dept_no)
 where TIMESTAMPDIFF( month,hire_date,CURRENT_TIMESTAMP())>400;