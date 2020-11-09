自增长列的要求：auto_increment
1、一个表只能有一个自增长列
2、自增长列必须是键列，唯一键和主键
3、自增长列必须是整数类型

create table t_stu(
	sid int primary key auto_increment,
	sname varchar(100) not null,
	gender char default '男' not null,
	card_id char(18) unique key,
	birthday date,
	address varchar(200)
);

insert into t_stu values(3,'张三',default,'123456789123456780','1990-1-1','宏福苑');
insert into t_stu values(null,'李四',default,'123456789123456781','1990-2-2','宏福苑');
insert into t_stu values(0,'王五',default,'223456789123456781','1990-2-2','宏福苑');
insert into t_stu(sname,card_id) values('赵六','223456456123456781');

当添加自增长列的值时 ，如果指定具体的值，就按具体值来，如果指定null或0就按自增长来。
