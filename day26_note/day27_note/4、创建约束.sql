约束：约束的是数据

1、主键约束
2、唯一键约束
3、外键约束
4、非空约束
5、默认值约束
6、检查约束：mysql暂时不支持

一、主键约束
要求：每张表都应该有主键约束，并且一个表只有一个主键约束
作用：通过主键约束，来唯一的确定一行
特点：非空并且唯一
分类：单列主键，复合主键

（一）单列主键
1、如何创建主键约束
建表时
create table 表名称(
	字段名1 数据类型 primary key,
	字段名2 数据类型,
	...
);

create table employee(
	eid int primary key,
	ename varchar(20),
	age int,
	salary double(10,2),
	birthday date	
);

insert into employee (eid,ename) values(1,'张三');
如果违反主键约束：ERROR 1062 (23000): Duplicate entry '1' for key 'PRIMARY'

建表后：
create table employee(
	eid int ,
	ename varchar(20),
	age int,
	salary double(10,2),
	birthday date	
);

alter table 表名称 add primary key(主键列);
例如：alter table employee add primary key(eid);

（二）复合主键
建表时：
create table 表名称(
	字段名1 数据类型 ,
	字段名2 数据类型,
	...
	primary key(复合主键的字段列表)
);
建表后：
alter table 表名称 add primary key(复合主键的字段列表);

create table stu(
	sid int primary key,
	sname varchar(20)
);
insert into stu values(1,'小路'),(2,'小周');
+-----+-------+
| sid | sname |
+-----+-------+
|   1 | 小路    |
|   2 | 小周     |
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
方法一：增加一列，无逻辑意义的列，只为了区别行，序号列
no sid cid score
1	1    1   90
2	1    2   89
3	2    1   89
4	2    2   67
方法二：复合主键，(sid,cid)一起决定
sid cid score
1    1   90
1    2   89
2    1   89
2    2   67


二、唯一键约束
要求：不是所有表都有，并且可能一张表有很多唯一键约束
特点：唯一，但是允许为空
分类：单列唯一，复合唯一
这里复合唯一和主键唯一的创建方式一样

1、如何创建唯一键约束
建表时
create table 表名称(
	字段名1 数据类型 primary key,
	字段名2 数据类型 unique key,
	字段名3 数据类型 unique key,
	...
);

create table employee(
	eid int primary key,
	ename varchar(20),
	cardid char(18) unique key,
	tel char(11) unique key
);
insert into employee values
(1,'张三','111111','111111'),
(2,'李四','222222','222222');

建表后：
alter table 表名称 add unique key(字段名);

create table employee(
	eid int primary key,
	ename varchar(20),
	cardid char(18),
	tel char(11)
);

alter table employee add unique key(cardid);
alter table employee add unique key(tel);

三、非空约束
特点：某列的值不允许为空
1、如何创建非空约束
建表时
create table 表名称(
	字段名1 数据类型 primary key,
	字段名2 数据类型 not null,
	字段名3 数据类型 not null,
	...
);

create table employee(
	eid int primary key,
	ename varchar(20) not null,
	cardid char(18) not null,
	tel char(11) not null
);

insert into employee (eid,ename) values(1,'张三');

建表后：
create table employee(
	eid int primary key,
	ename varchar(20) ,
	cardid char(18),
	tel char(11) 
);
alter table 表名称 modify 字段名 数据类型  not null;

alter table employee modify ename varchar(20) not null;

四、默认值约束
某一列的值没有指定值的话，用默认值

1、如何指定默认值约束
建表时
create table 表名称(
	字段名1 数据类型 primary key,
	字段名2 数据类型 default 默认值,
	字段名3 数据类型 not null,
	...
);

create table employee(
	eid int primary key,
	ename varchar(20) not null,
	gender char default '男'
);
insert into employee(eid,ename) values(1,'张三');
insert into employee values(2,'李四',default);
insert into employee values(3,'李梅','女');

建表后：
alter table 表名称 modify 字段名 数据类型  default 默认值;