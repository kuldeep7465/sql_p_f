create table prima(id int identity,city varchar(50))
alter  table prima add primary key(id)
create table secoun(id int identity,name varchar(50),age int ,city_id int,primary key(id),foreign key(city_id) references prima(id))
insert into prima values('barora'),('mirjapur')
insert into secoun values('kuldeep',18,1),('sanjay',18,2)
select secoun.name  ,prima.city from prima inner join secoun on prima.id=secoun.city_id