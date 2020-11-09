约束：
主键约束、唯一键约束、外键约束、非空约束、默认值约束、检查约束(check)

外键约束：
主表（父表）和从表（子表）两列值的引用（参考）关系。

部门表：部门编号、部门名称、部门简介
员工表：员工编号，员工姓名，薪资，...，所在的部门编号

部门表是主表，员工表示从表，员工表的"所在的部门编号"参考（引用）部门表的"部门编号"

建立外键后有什么不同？
（1）当我们给从表添加和修改记录时，那么外键列的值，要受到主表的约束
例如：员工表选员工所在部门编号时，要看部门表是否有这个部门

（2）当我们修改或删除主表的被参考列的值时，要受到从表的约束
例如：当修改部门表的部门编号时，要看这个部门编号是否在员工表中用过

（3）删除主表，要受到从表的约束
例如：要删除部门表时，因为员工表引用它，参考它，所以是无法删除


1、如何建立外键
建表时建立外键：
前提：先建立主表，在建立从表
create table 主表名(
	字段1 数据类型 primary key,
	字段2 数据类型 [unique key],
	字段3 数据类型 [not null] [default 默认值]
	....
);

create table 从表名(
	字段1 数据类型 primary key,
	字段2 数据类型 [unique key],
	字段3 数据类型 [not null] [default 默认值]
	....
	
	foreign key(从表的某个字段) references 主表(被参考的字段)
);
说明：主表(被参考的字段)，必须是一个主键列或唯一键列。

例如：
create table department(
	did int primary key,  #部门编号
	dname varchar(20) not null,
	description varchar(50)
);

create table employee(
	eid int primary key,
	ename varchar(20) not null,
	salary double not null,
	deptno int,  #所在部门编号
	foreign key(deptno) references department(did)
);

insert into department values(1,'财务','发钱的');
insert into employee values(1,'张三',10000,1);
insert into employee values(2,'李四',20000,2);

update department set did = 2 where dname ='财务';


2、建表后
alter table 从表名 add foreign key (从表的某个字段) references 主表名(被参考的字段);

3、外键的约束关系可以多种情况
（1）默认的：严格约束
		on update restrict 
		on delete restrict
（2）级联约束：cascade 
		on update cascade  
		on delete cascade
（3）置空：set null		
		on update set null 
		on delete set null
（4）无动作：no action 		
		on update no action 
		on delete no action
在mysql中，no action 	等价于  restrict

说明：on update的策略和on delete可以不同

create table department(
	did int primary key,  #部门编号
	dname varchar(20) not null,
	description varchar(50)
);

create table employee(
	eid int primary key,
	ename varchar(20) not null,
	salary double not null,
	deptno int,  #所在部门编号
	foreign key(deptno) references department(did) on update cascade on delete cascade
);	

insert into department values(1,'财务','发钱的');
insert into employee values(1,'张三',10000,1);
insert into employee values(2,'李四',10000,null);
update department set did = 2 where dname ='财务';
或
delete from department where did = 2; 

create table department(
	did int primary key,  #部门编号
	dname varchar(20) not null,
	description varchar(50)
);

create table employee(
	eid int primary key,
	ename varchar(20) not null,
	salary double not null,
	deptno int,  #所在部门编号
	foreign key(deptno) references department(did) on update set null on delete set null
);	
insert into department values(1,'财务','发钱的');
insert into employee values(1,'张三',10000,1);
insert into employee values(2,'李四',10000,null);
update department set did = 2 where dname ='财务';
或
delete from department where did = 2; 

例如：
订单表与订单明细表
	订单表是主表，订单明细表是从表。
	订单明细表中建立外键，  foreign key(订单编号) references 订单表(订单编号) on update cascade on delete cascade

部门表和员工表
	部门表示主表，员工表是从表
	员工表中建立外键， foreign key(部门编号) references 部门表(部门编号) on update cascade on delete restrict
	员工表中建立外键， foreign key(部门编号) references 部门表(部门编号) on update cascade on delete set null
	
	