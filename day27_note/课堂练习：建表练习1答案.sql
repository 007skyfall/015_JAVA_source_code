第一题
create database city_manager_db;

create table city_manager_db.city(
	id int,
	city varchar(20),
	provinceid int
);

use city_manager_db;
create table city(
	id int,
	city varchar(20),
	provinceid int
);

create table province(
	id int,
	province varchar(20)
);

insert into city values
(1,'广州',1),
(2,'深圳',1),
(3,'惠州',1),
(4,'长沙',2),
(5,'武汉',3);

insert into province values
(1,'广东'),
(2,'湖南'),
(3,'湖北');

第二题
create database apply_manager_db;
create table g_cardapply(
	g_applyno  varchar(8),
	g_applydate bigint(8),
	g_state varchar(2)
);

create table g_cardapplydetail(
	g_applyno  varchar(8),
	g_name varchar(80),
	g_idcard varchar(20),
	g_state varchar(2)
);

insert into g_cardapply values
(11111111,20180101,02),
(22222222,20180202,02),
(33333333,20180202,01),
(44444444,20180303,06),
(55555555,20180404,04),
(66666666,20180505,02);

insert into g_cardapplydetail values
(11111111,'张三',1011111,02),
(22222222,'李四',20180202,02),
(33333333,'王五',20180202,01),
(44444444,'赵六',20180303,06),
(55555555,'钱七',20180404,04),
(66666666,'王八',20180505,02);
