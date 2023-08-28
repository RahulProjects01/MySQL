create database sakila1;
use sakila;
 
 -- ham stating me % use nhi karte hai ,kyoki ye hai row ko check karta hai jishse time complexcity bad jati hai 
 
 select * from film_list;
 select * from film_list order by category;
  select * from film_list order by category asc;
   select * from film_list order by category desc;
 select catagory,title from film_list order by price;  -- ye colum ke base pe data sate hoga 
  select * from address  order by district;
  select district,address,address_id from address  order by district; -- jo null value hoti hai kisi table me vo pahle show hoti hai 
select district,address,address_id from address  order by district desc,address_id asc;
select * from address limit 3;
select * from address limit 3,2; -- jo pahle number 3 likha hua hai vo number ko skip karta hai or baad me jo number  2 hai vo puchhta hai ki tumhe number kitne chaiye
select * from address limit 13,5; -- ye 14 se 18 tak row dega
select * from address limit 3 offset 3;
select 2+2 from dual; --  dual is a dammy table 
select now() from dual; -- ye crunnt syaytem ki date btati hai 
-- concat , substr,concat_ws

   
 

