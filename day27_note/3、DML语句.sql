DML：简单的增删改查

mysql> desc employee;
+----------+--------------+------+-----+---------+-------+
| Field    | Type         | Null | Key | Default | Extra |
+----------+--------------+------+-----+---------+-------+
| eid      | int(11)      | YES  |     | NULL    |       |
| ename    | varchar(20)  | YES  |     | NULL    |       |
| sex      | char(2)      | YES  |     | NULL    |       |
| age      | int(11)      | YES  |     | NULL    |       |
| salary   | double(10,2) | YES  |     | NULL    |       |
| birthday | date         | YES  |     | NULL    |       |
+----------+--------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

1、添加语句
（1）insert into 表名称 values(值列表);
要求：值列表的个数、类型、顺序和表结构对应
例如：insert into employee values(1,'张三','男',23,10000,'1990-9-9');

如果出现：ERROR 1366 (HY000): Incorrect string value: '\xD5\xC5\xC8\xFD' for column 'ename' at row 1
说明字符编码的问题

set names gbk;

（2）insert into 表名称(字段列表) values(值列表);
要求：值列表的个数、类型、顺序和(字段列表)对应
例如：
insert into employee (eid,ename) values(2,'李四');

（3）同时插入多行
insert into 表名称 values(值列表1),(值列表2),(值列表2)...;
insert into 表名称(字段列表) values(值列表1),(值列表2),(值列表2)...;

例如：
insert into employee (eid,ename) values(3,'王五'),(4,'赵六'),(5,'钱七');

insert into employee (eid,ename)values
(3,'王五'),
(4,'赵六'),
(5,'钱七');

2、修改语句
（1）update 表名称 set 字段名1 = 值1,字段名2 = 值2 ....  【where 条件】;
说明：如果没有where，就表示修改所有行
例如：
update employee set salary = 15000 ;
update employee set salary = 10000 where  eid = 1;

（2）update 表名称1,表名称2 set 表名称1.字段名1 = 值1,表名称2.字段名2 = 值2 ....  【where 条件】;

create table department(
	did int,
	dname varchar(20)
);
alter table employee add did int;

insert into department values(1,'财务'),(2,'开发');

#需求，把“开发”修改为“开发部”，并且把“张三”的部门修改为2，即安排在开发部
update employee,department set did = 2,dname = '开发部' ;
ERROR 1052 (23000): Column 'did' in field list is ambiguous 模糊不清的

update employee,department set employee.did = 2,department.dname = '开发部' ;

update employee,department set employee.did = 2,department.dname = '开发部' 
where employee.ename='张三' && department.did = 2;

3、删除数据，不删表结构
（1）delete from 表名称 【where 条件】;
例如：delete from department;
      delete from employee where ename ='钱七';
	  
（2）truncate 表名称; 作用是清空表数据，表结构还在
例如：
truncate employee;

delete from与truncate的区别？
（1）truncate只能用于清空表，不能只删除部分数据，而delete可以加条件，只删除部分数据
（2）truncate清空表的速度很快，而delete清空表很慢，
原因，truncate是把整个表drop掉，然后新建一张新表，表结构和原来一样。
      delete是逐条删除。
（3）truncate语句是无法回滚的，delete可以撤销（当然前提是事务没提交时可以回滚）

4、查询数据（简单查询）
（1）select * from 表名称;
用于显示整张表的数据

例如：select * from employee;

（2）select 字段列表 from 表名称;
用于显示部分列

例如：select eid,ename from employee;

（3）select 字段列表 from 表名称 where 条件;
用于显示部分行和列
例如：select eid,ename from employee where eid = 3;

（4）select * from 表名称 where 条件;
用于显示部分行所有列
例如：select * from employee where eid = 3;

