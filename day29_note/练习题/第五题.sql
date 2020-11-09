CREATE DATABASE employee;

#使用（employee）数据库
USE employee;

-- 创建（einfo）表
CREATE TABLE einfo(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(20) NOT NULL,
	sex VARCHAR(20) DEFAULT '女',
	tel VARCHAR(20),
	addr VARCHAR(50),
	salary FLOAT
);

INSERT INTO einfo(id,`name`,sex,tel,addr,salary)VALUES
(10001,'张一一','男','13456789000','广东韶关',1001.58),
(10002,'索南拉姆','女','13456789000','青海黄南',1201.21),
(10003,'普华才让','男','2135413513','广东佛山',1004.11),
(10004,'杨坤','男','186165135','广东深圳',1501.23),
(10005,'扎西东智','男','11654654465','广东广州',1405.16);

/*
要求3：查询出第2条到第4条记录信息。
要求4：查询出姓“刘”的员工的工号，家庭住址。
要求5：将“李四”的家庭住址改为“广东韶关”
要求6：表按照薪水salary进行降序排序。
*/

#查询出第2条到第4条记录信息
SELECT * FROM einfo LIMIT 1,3;

#要求4：查询出姓“刘”的员工的工号，家庭住址。
SELECT id,addr FROM einfo WHERE `name` LIKE '刘%';

#将“李四”的家庭住址改为“广东韶关”
UPDATE einfo SET addr = '广东韶关' WHERE `name` = '李四';

#要求6：表按照薪水salary进行降序排序
SELECT * FROM einfo ORDER BY salary DESC;