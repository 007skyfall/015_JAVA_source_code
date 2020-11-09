��һ��
create database exer2;
use exer2;

create table t_stu(
	sid int primary key,
	sname varchar(100) not null,
	gender char default '��',
	card_id char(18) unique key,
	birthday date,
	address varchar(200)
);

�ڶ��⣺
#�Ӳ��ű�ŵ����ù�ϵ�������ű�������Ա�����Ǵӱ�
create table t_department(
	did int primary key,
	dname varchar(100) not null unique key,
	description varchar(200),
	manager_id int  #���ŵĹ����߱��
);

#��ְλ��ŵ����ù�ϵ����ְλ��������Ա�����Ǵӱ�
create table t_job(
	job_id int primary key,
	job_name varchar(100) not null,
	description varchar(200)
);

#���쵼��ŵ����ù�ϵ����������Ա�����ӱ�Ҳ��Ա����
create table t_employee(
	eid int primary key,
	ename varchar(100) not null,
	gender char not null default '��',
	card_id char(18) unique key,
	tel char(11),
	job_id int,
	mid int, #Ա�����쵼���
	birthday date,
	hiredate date,
	address varchar(100),
	dept_id int,
	foreign key(dept_id) references t_department(did),
	foreign key(job_id) references t_job(job_id),
	foreign key(mid) references t_employee(eid)
);

#��н�ʵ�Ա����ŵ����ù�ϵ����Ա����������н�ʱ��Ǵӱ�
create table t_salary(
	eid int primary key,
	basic_salary decimal(10,2),
	performance_salary decimal(10,2),
	commission_pct decimal(10,2),
	deduct_wages decimal(10,2),
	foreign key(eid) references t_employee(eid)
);

#�Ӳ��ű���쵼������ù�ϵ�������ű��Ǵӱ�Ա����������

alter table t_department add foreign key(manager_id) references t_employee(eid);
