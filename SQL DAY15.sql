use sakila;
create table xyz(birthday date);
insert into xyz values('2023-09-23');
select * from xyz;
drop table xyz;

-- alter 
-- foregin key
-- transtionscontrol language

create table xyz(birthday datetime);
insert into xyz values ('2023-09-23 18:24:33');
select * from xyz;
select birthday,year (birthday),time (birthday) from xyz;
select birthday,year (birthday),monthname(birthday) from xyz;
select birthday,year (birthday),last_day (birthday) from xyz;
select birthday,year (birthday),weekofyear(birthday) from xyz;

select birthday date_format(birthday, '%b %c') from xyz;\\

create table captions (
text varchar(12)
,create_at timestamp default current_timestamp,
updated_at timestamp on update current_timestamp);

insert into captions(text,created_at) values ("hey",now());
update captions set text = "heyu2";
select * from captions;