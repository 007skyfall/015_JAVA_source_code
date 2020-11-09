create database exam28;
use exam28;

create table employee(
	eid int primary key auto_increment,
	ename varchar(20) not null,
	salary double not null,
	birthday date
);

insert into employee values
(null,'马云',2025.33,'1973-8-12'),
(null,'李彦宏',3209.49,'1986-7-14'),
(null,'马化腾',1436.12,'1964-8-10');

alter table employee add tel char(11);

create table department(
	did int primary key,
	dname varchar(100) not null unique key
);

alter table employee add did int;
alter table employee add foreign key(did) references department(did);

delete from employee where eid = 5;

update employee set salary = salary + 200,tel = '13586705312' where eid = 17;

select * from employee;

select * from employee where eid = 63;

select birthday, tel from employee where ename = 'Linda';

select * from employee where tel is null;

select * from employee where salary between 2000 and 5000;

select * from employee where salary > 3000;

select * from employee where salary in(1000,3000,5000);

select * from employee where ename like '%o%';