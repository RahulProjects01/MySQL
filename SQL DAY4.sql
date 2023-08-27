create database school;
use school;


create table student(
rollno int primary key,
name varchar (70),
marks int not null ,
grade varchar(1),
city varchar(20)
);


insert into student 
(rollno,name,marks,grade,city)
values
(101,"RAHUL",89,'A',"jaipur"),
(102,"VISHAL",2,'B',"dausa"),
(103,"KARAN",32,'C',"pune"),
(104,"VICKEY",33,'D',"dehli"),
(105,"VIKASH",76,'E',"panjab"),
(106,"GOLU",87,'F',"ruhu");



select * from student; 
select distinct city from student; -- distinct se ab city name repited nhi aayega 
select * from student where marks > 80;
select * from student where city > "JAIPUR";  -- string name me ye camalcasing follow nhi karta hai  
select * from student where grade > 'A';
select * from student where city in ("dehli","jaipur");  -- spesify the city name
select * from student where marks > 50 limit 3; -- limit the numbers
select * from student order by marks ASC; -- ye data asending order me aaega 
select * from student order by marks DESC LIMIT 3;  -- ye datay descending order me aaega




 

 
