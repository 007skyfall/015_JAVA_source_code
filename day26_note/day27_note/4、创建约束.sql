Լ����Լ����������

1������Լ��
2��Ψһ��Լ��
3�����Լ��
4���ǿ�Լ��
5��Ĭ��ֵԼ��
6�����Լ����mysql��ʱ��֧��

һ������Լ��
Ҫ��ÿ�ű�Ӧ��������Լ��������һ����ֻ��һ������Լ��
���ã�ͨ������Լ������Ψһ��ȷ��һ��
�ص㣺�ǿղ���Ψһ
���ࣺ������������������

��һ����������
1����δ�������Լ��
����ʱ
create table ������(
	�ֶ���1 �������� primary key,
	�ֶ���2 ��������,
	...
);

create table employee(
	eid int primary key,
	ename varchar(20),
	age int,
	salary double(10,2),
	birthday date	
);

insert into employee (eid,ename) values(1,'����');
���Υ������Լ����ERROR 1062 (23000): Duplicate entry '1' for key 'PRIMARY'

�����
create table employee(
	eid int ,
	ename varchar(20),
	age int,
	salary double(10,2),
	birthday date	
);

alter table ������ add primary key(������);
���磺alter table employee add primary key(eid);

��������������
����ʱ��
create table ������(
	�ֶ���1 �������� ,
	�ֶ���2 ��������,
	...
	primary key(�����������ֶ��б�)
);
�����
alter table ������ add primary key(�����������ֶ��б�);

create table stu(
	sid int primary key,
	sname varchar(20)
);
insert into stu values(1,'С·'),(2,'С��');
+-----+-------+
| sid | sname |
+-----+-------+
|   1 | С·    |
|   2 | С��     |
+-----+-------+
create table course(
	cid int primary key,
	cname varchar(20)
);
+-----+--------+
| cid | cname  |
+-----+--------+
|   1 | javase |
|   2 | mysql  |
+-----+--------+
insert into course values(1,'javase'),(2,'mysql');
create table xuanke(
	sid int,
	cid int,
	score int,
	primary key(sid,cid)
);

insert into xuanke values(1,1,90),(1,2,89);
����һ������һ�У����߼�������У�ֻΪ�������У������
no sid cid score
1	1    1   90
2	1    2   89
3	2    1   89
4	2    2   67
������������������(sid,cid)һ�����
sid cid score
1    1   90
1    2   89
2    1   89
2    2   67


����Ψһ��Լ��
Ҫ�󣺲������б��У����ҿ���һ�ű��кܶ�Ψһ��Լ��
�ص㣺Ψһ����������Ϊ��
���ࣺ����Ψһ������Ψһ
���︴��Ψһ������Ψһ�Ĵ�����ʽһ��

1����δ���Ψһ��Լ��
����ʱ
create table ������(
	�ֶ���1 �������� primary key,
	�ֶ���2 �������� unique key,
	�ֶ���3 �������� unique key,
	...
);

create table employee(
	eid int primary key,
	ename varchar(20),
	cardid char(18) unique key,
	tel char(11) unique key
);
insert into employee values
(1,'����','111111','111111'),
(2,'����','222222','222222');

�����
alter table ������ add unique key(�ֶ���);

create table employee(
	eid int primary key,
	ename varchar(20),
	cardid char(18),
	tel char(11)
);

alter table employee add unique key(cardid);
alter table employee add unique key(tel);

�����ǿ�Լ��
�ص㣺ĳ�е�ֵ������Ϊ��
1����δ����ǿ�Լ��
����ʱ
create table ������(
	�ֶ���1 �������� primary key,
	�ֶ���2 �������� not null,
	�ֶ���3 �������� not null,
	...
);

create table employee(
	eid int primary key,
	ename varchar(20) not null,
	cardid char(18) not null,
	tel char(11) not null
);

insert into employee (eid,ename) values(1,'����');

�����
create table employee(
	eid int primary key,
	ename varchar(20) ,
	cardid char(18),
	tel char(11) 
);
alter table ������ modify �ֶ��� ��������  not null;

alter table employee modify ename varchar(20) not null;

�ġ�Ĭ��ֵԼ��
ĳһ�е�ֵû��ָ��ֵ�Ļ�����Ĭ��ֵ

1�����ָ��Ĭ��ֵԼ��
����ʱ
create table ������(
	�ֶ���1 �������� primary key,
	�ֶ���2 �������� default Ĭ��ֵ,
	�ֶ���3 �������� not null,
	...
);

create table employee(
	eid int primary key,
	ename varchar(20) not null,
	gender char default '��'
);
insert into employee(eid,ename) values(1,'����');
insert into employee values(2,'����',default);
insert into employee values(3,'��÷','Ů');

�����
alter table ������ modify �ֶ��� ��������  default Ĭ��ֵ;