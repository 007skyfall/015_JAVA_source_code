-- 要求1：以自己的姓名创建一个数据库。
CREATE DATABASE db6;
USE db6;

-- 要求2：在此数据库下创建如下3表，数据类型，宽度，是否为空根据实际情况自己定义。

-- A．部门表（department）：部门编号（depid），部门名称（depname）；其中部门编号为主键。
CREATE TABLE department(
	depid INT PRIMARY KEY,
	depname VARCHAR(20)
);

-- B．雇员表（employee）：雇员编号（empid），姓名（name），性别（sex），职称（title），出生日期（birthday），所在部门编号（depid）；其中雇员编号为主键,部门编号为外键；
CREATE TABLE employee(
	empid INT PRIMARY KEY AUTO_INCREMENT,
	`name` VARCHAR(10),
	sex VARCHAR(10),
	title VARCHAR(10),
	birthday DATE,
	depid INT,
	FOREIGN KEY(depid) REFERENCES department(depid)
);

-- C．工资表（salary）：雇员编号（empid），基本工资（basesalary），职务工资（titlesalary），扣除（deduction）。其中雇员编号为主键。
CREATE TABLE salary(
	empid INT PRIMARY KEY,
	basesalary INT(20),
	titlesalary INT(20),
	dedection INT(20),
	FOREIGN KEY (empid) REFERENCES employee(empid)
);

#要求3：修改表结构，在部门表中添加部门简介（deincl）字段。
ALTER TABLE department ADD deincl VARCHAR(200);

INSERT INTO department(depid,depname)VALUES(111,'生产部');
INSERT INTO department(depid,depname)VALUES(222,'销售部');
INSERT INTO department(depid,depname)VALUES(333,'人事部');


INSERT INTO employee(empid,`name`,sex,title,birthday,depid)VALUES(1001,'张三','男','高级工程师','1975-1-1',111);
INSERT INTO employee(empid,`name`,sex,title,birthday,depid)VALUES(1002,'李四','女','助工','1985-1-1',111);
INSERT INTO employee(empid,`name`,sex,title,birthday,depid)VALUES(1003,'王五','男','工程师','1978-11-11',222);
INSERT INTO employee(empid,`name`,sex,title,birthday,depid)VALUES(1004,'赵六','男','工程师','1979-1-1',222);
	
INSERT INTO salary(empid,basesalary,titlesalary,dedection)VALUES(1001,2200,1100,200);
INSERT INTO salary(empid,basesalary,titlesalary,dedection)VALUES(1002,1200,200,100);
INSERT INTO salary(empid,basesalary,titlesalary,dedection)VALUES(1003,1900,700,200);
INSERT INTO salary(empid,basesalary,titlesalary,dedection)VALUES(1004,1950,700,150);

/*
要求5：将李四的基本工资改为1700元，职务工资为600。
要求6：删除人事部门的部门记录。
要求7：查询出每个雇员的雇员编号，实发工资（基本工资+职务工资-扣除），应发工资（基本工资+职务工资）。
要求8：查询姓“张”且年龄小于40的员工的记录。
要求9：查询销售部门的雇员姓名及其基本工资。
要求10：统计各职称的人数。
*/
UPDATE salary SET basesalary = 1700, titlesalary = 600 
WHERE empid = (SELECT empid FROM employee WHERE `name` = '李四');

#考虑重名
UPDATE salary SET basesalary = 1700, titlesalary = 600 
WHERE empid IN (SELECT empid FROM employee WHERE `name` = '李四');

#删除人事部门的部门记录
DELETE FROM department WHERE depname = '人事部';

#查询出每个雇员的雇员编号，实发工资（基本工资+职务工资-扣除），
#应发工资（基本工资+职务工资）。

SELECT empid AS " 雇员编号",(basesalary + titlesalary - dedection) AS "实发工资",
(basesalary + titlesalary) AS "应发工资" FROM salary;

#查询姓“张”且年龄小于40的员工的记录
SELECT * FROM employee WHERE `name` LIKE '张%' 
AND (YEAR(CURDATE()) - YEAR(birthday)) < 40;

#查询销售部门的雇员姓名及其基本工资
#因为销售部门在部门表，雇员姓名在员工表，基本工资在工资表，所以三表联合
SELECT employee.name,salary.basesalary
FROM department INNER JOIN employee INNER JOIN salary
ON department.depid = employee.depid AND employee.empid = salary.empid
WHERE department.depname = '销售部'


#统计各职称的人数
SELECT title,COUNT(*) FROM employee GROUP BY title;
SELECT title,COUNT(*) FROM employee GROUP BY title WITH ROLLUP;
