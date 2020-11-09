删除约束：
1、主键约束
alter table  表名称 drop  primary key;

2、删除唯一键约束
alter table  表名称 drop index 唯一键的索引名;

解释：因为像主键、唯一键、外键三个键约束建立时，会自动增加一个索引（用来提高查询速度），
因为删除唯一键，它用的是删除索引。

show index  from 表名称;

alter table employee drop index cardid;

3、删除非空和默认值约束
alter table employee modify ename varchar(20) ; #去掉非空和默认值

4、删除外键
alter table  表名称 drop foreign key 外键约束名;
例如：alter table employee drop foreign key employee_ibfk_1;

如何查看外键约束：
SELECT * FROM information_schema.table_constraints WHERE table_name = '表名称';

SELECT * FROM information_schema.table_constraints WHERE table_name = 'employee';