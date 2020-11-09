第一题
create database exer2;
use exer2;

create table t_stu(
	sid int primary key,
	sname varchar(100) not null,
	gender char default '男',
	card_id char(18) unique key,
	birthday date,
	address varchar(200)
);

第二题：
#从部门编号的引用关系看，部门表是主表，员工表是从表
create table t_department(
	did int primary key,
	dname varchar(100) not null unique key,
	description varchar(200),
	manager_id int  #部门的管理者编号
);

#从职位编号的引用关系看，职位表是主表，员工表是从表
create table t_job(
	job_id int primary key,
	job_name varchar(100) not null,
	description varchar(200)
);

#从领导编号的引用关系看，主表是员工表，从表也是员工表
create table t_employee(
	eid int primary key,
	ename varchar(100) not null,
	gender char not null default '男',
	card_id char(18) unique key,
	tel char(11),
	job_id int,
	mid int, #员工的领导编号
	birthday date,
	hiredate date,
	address varchar(100),
	dept_id int,
	foreign key(dept_id) references t_department(did),
	foreign key(job_id) references t_job(job_id),
	foreign key(mid) references t_employee(eid)
);

#从薪资的员工编号的引用关系看，员工表是主表，薪资表是从表
create table t_salary(
	eid int primary key,
	basic_salary decimal(10,2),
	performance_salary decimal(10,2),
	commission_pct decimal(10,2),
	deduct_wages decimal(10,2),
	foreign key(eid) references t_employee(eid)
);

#从部门表的领导编号引用关系看，部门表是从表，员工表是主表。

alter table t_department add foreign key(manager_id) references t_employee(eid);
