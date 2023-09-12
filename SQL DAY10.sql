use sakila;
use world;
select continent , count(*),sum(population) from country group by continent having count(*) > 50;

use sakila;
show tables;
drop table abc;

desc actor;
desc actor_info;
select first_name from actor limit 3;
 select first_name from actor_info order by first_name;
-- union --> ye all quary ko show karta hai , ishme total number of value same honi chaiye
-- intersect --> ye table me comman value ko show karta hai 
-- except 
-- join

-- primaryy key , foren key , joins , set opration
select * from xyz union all select * from abc;