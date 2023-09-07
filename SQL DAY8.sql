-- varchar and char 
use test;

create table epl3(name1 char(20));
insert into epl3 values("s g");
select * from epl3;
select name1,length(name1) from epl3;

-- char me space ko remove kar det hai 
-- varchar me space count hota hai 

create table space (name varchar(3));
insert into space values("B  ");
select * from space;
select name ,length(name) from space;

create table ep(eid int check(eid>2));
insert into ep values(1);

create table we1( gender char(1) check(gender in ("R","M","O")));
insert into we values("R");
SELECT * FROM we;
delete from we;
delete from we where gender = "R"; -- ishko condition se delete kar sakte hai 
update we set gender = 'Rahul' where gender = 'R' limit 1; -- limit ko delete ke sath bhi use kar sakte hai, 1,3 ishaka matlab pahli value ko chhod kar baki 3  


delete from we order by age limit 1; -- ishme data short hone ke baad data  ki value milegi , delete data every row ,ye slow hota hai
drop table we; -- ishshe table ka data delete ho jata hai ye hamre liye thida slow prosses karta hai , ishme ham vapish data access kar sakte hai , ye roll back ho sakta hai 
truncate table we; -- ye pahle hmari table ko drop kar deat hai or fir vapish use table ka strecture vapish de deta hai , ishko roll back nhi kar sakte 

-- home work 
-- group by vs disttrint , deffrence beetween in grop by data filter 






