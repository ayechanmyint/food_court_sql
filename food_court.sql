
create database food_court;
use food_court;
create table fruits (id int auto_increment,name varchar(100),stall varchar(255),color varchar(100),primary key (id));
insert into fruits (`name`,`stall`,`color`) values ('mango','stall 1','green');
insert into fruits (`name`,`stall`,`color`) values ('apple','stall 2','red');
insert into fruits (`name`,`stall`,`color`) values ('grape','stall 3','violet');
select `stall`,count(`name`) from fruits group by `stall`;

create table stalls (id int auto_increment,name varchar(100),primary key(id));
insert into stalls (`name`) values ('stall_one');
insert into stalls (`name`) values ('stall_two');
update fruits set `stall` = 'stall_one' where id=1;
update fruits set `stall` = 'stall_two' where id=2;
select * from fruits inner join stalls on fruits.stall = stalls.name;
