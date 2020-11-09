一、DDL
（一）操作数据库
1、创建数据库
CREATE DATABASE 数据库名;

create database 数据库名;

例如：create database bigdata1111;

2、查看当前用户能够看到的所有的数据库
show databases;

3、使用某个数据库
use 数据库名;

4、删除数据库
drop database 数据库名;

（二）操作表格
1、查看当前数据库下都有什么表格，当前用户能够看到所有表格
show tables; #前面得有use语句，否则会报错No database selected
show tables from 数据库名;

2、创建表格（简单版）
create table 表名称(
	字段名1 数据类型,
	字段名2 数据类型,
	...
);

create table 表名称(字段名1 数据类型,字段名2 数据类型,...);

例如：
员工表：编号、姓名、年龄、薪资、生日
create table employee(
	eid int,
	ename varchar(20),
	age int,
	salary double(10,2),
	birthday date	
);

3、查看表结构
desc 表名称;
show create table 表名称;

4、删除表格
drop table 表名称;

5、修改表结构
（1）修改表名称
alter table 旧表名 rename 新表名;
rename table 旧表名 to 新表名;
例如：
alter table employee rename emp;
rename table emp to employee;

（2）增加一列
A:alter table 表名称  add 【column】字段名 数据类型;
例如：
alter table employee add tel char(11);

B:alter table 表名称  add 【column】字段名 数据类型 after 另一个字段;
例如：
alter table employee add gender char after ename;


C:alter table 表名称  add 【column】字段名 数据类型 first;

（3）删除一列
alter table 表名称  drop 【column】字段名;
例如：alter table employee drop tel;

（4）修改列的数据类型
alter table 表名称  modify 【column】字段名 新数据类型 【after 另一个字段/first】;
例如：alter table employee modify gender char(2);

（5）修改列的名称
alter table 表名称  change 【column】旧字段名 新字段名 数据类型 【after 另一个字段/first】;
例如：alter table employee change gender sex char(2);