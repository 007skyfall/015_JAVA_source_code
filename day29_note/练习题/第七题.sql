-- 创建数据库
CREATE DATABASE db7;

-- 使用数据库
USE db7;

-- 创建商品表
CREATE TABLE goods(
	sid INT(11) PRIMARY KEY,
	`name` VARCHAR(20),
	num INT(5)
);
INSERT INTO goods VALUES
(100023,'nokia',5),
(100024,'htc',7),
(100025,'mi',10),
(100026,'asus',3);

-- 创建顾客表
CREATE TABLE cus(
	gid INT(11) PRIMARY KEY,
	`name` VARCHAR(20),
	address VARCHAR(20),
	yu INT(10)
);

-- 插入顾客数据
INSERT INTO cus VALUES(001,'zhang','usa',5000);
INSERT INTO cus VALUES(002,'liu','china',10000);
INSERT INTO cus VALUES(003,'liu','frech',50000);
INSERT INTO cus VALUES(004,'wen','jap',250000);

-- 创建供应表
CREATE TABLE pro(
	id INT(11) PRIMARY KEY,
	`name` VARCHAR(20),
	sid INT(10),
	price INT(10),
	FOREIGN KEY(sid) REFERENCES goods(sid)
);
-- 插入供应表数据
INSERT INTO pro VALUES(1001,'oracle',100023,1500);
INSERT INTO pro VALUES(1002,'ibm',100023,1500);
INSERT INTO pro VALUES(1003,'baidu',100025,1500);
INSERT INTO pro VALUES(1004,'google',100026,1500);

-- 创建订单表
CREATE TABLE ORD(
	oid INT(11) PRIMARY KEY AUTO_INCREMENT,
	sid INT(11) ,
	gid INT(11),
	orderdate DATE,
	FOREIGN KEY(sid) REFERENCES goods(sid),
	FOREIGN KEY(gid) REFERENCES cus(gid)
);

-- 插入订单数据
INSERT INTO ORD VALUES(NULL,100023,001,'1998-2-1');
INSERT INTO ORD VALUES(NULL,100024,002,'1999-3-12');
INSERT INTO ORD VALUES(NULL,100023,003,'2000-10-21');
INSERT INTO ORD VALUES(NULL,100024,003,'2000-11-02');

/*
要求3：从供应表中查询全体供应厂商的基本信息
要求4：从顾客表中查询地址在usa的顾客的顾客编号、顾客姓名及余额
要求5：从商品表中查询商品名称倒数第二个字母为i的商品名称及数量，并按数量降序排序
要求6：从订单表中查询购买商品编号为“100023”商品的顾客编号及订单日期
要求7：从商品表中查询最多商品数量，最小商品数量及商品总数量的记录信息
要求8：向商品表中追加一条纪录’200010’,’可口可乐’,’900’
要求9：将商品表中商品编号为100024的商品名称更改为”百事可乐”
要求10：删除订单表中商品编号为”100024”的订单记录
*/
#要求3：从供应表中查询全体供应厂商的基本信息
SELECT id,`name` FROM pro;

#从顾客表中查询地址在usa的顾客的顾客编号、顾客姓名及余额
SELECT gid,`name`,yu FROM cus WHERE address = 'usa';

#从商品表中查询商品名称倒数第二个字母为i的商品名称及数量，并按数量降序排序
SELECT `name`,num FROM goods WHERE `name` LIKE '%i_' ORDER BY num DESC;

#从订单表中查询购买商品编号为“100023”商品的顾客编号及订单日期
SELECT gid,orderdate FROM `ord` WHERE sid = '100023';

#从商品表中查询最多商品数量，最小商品数量及商品总数量的记录信息
SELECT MAX(num),MIN(num),SUM(num) FROM goods;

#向商品表中追加一条纪录’200010’,’可口可乐’,’900’
INSERT INTO goods VALUES(200010,'可口可乐',900);

#将商品表中商品编号为100024的商品名称更改为”百事可乐”
UPDATE goods SET `name`= '百事可乐' WHERE sid = 100024;

#删除订单表中商品编号为”100024”的订单记录
DELETE FROM ORD WHERE sid = '100024';

