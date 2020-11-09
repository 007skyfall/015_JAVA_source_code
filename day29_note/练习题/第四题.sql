CREATE DATABASE company;
USE company;

CREATE TABLE offices(
	officecode INT PRIMARY KEY NOT NULL UNIQUE KEY,
	city VARCHAR(30) NOT NULL,
	address VARCHAR(50),
	country VARCHAR(50) NOT NULL,
	postalcode VARCHAR(25) UNIQUE KEY
);

CREATE TABLE employees(
	empNum INT(11) PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
	lastName VARCHAR(50) NOT NULL,
	firstName VARCHAR(50) NOT NULL,
	mobile VARCHAR(25) UNIQUE,
	`code` INT NOT NULL,
	FOREIGN KEY employees(`code`) REFERENCES offices (officecode),
	jobtitle VARCHAR(50) NOT NULL,
	birth DATE NOT NULL,
	note VARCHAR(255),
	sex VARCHAR(5)
);

/*
要求4：将表employees的mobile字段修改到Code字段后面。
要求5：将表employees的birth字段改名为employee_birth;
要求6：修改sex字段，数据类型为char（1），非空约束。
要求7：删除字段note；
要求8：增加字段名favoriate_activity,数据类型为varchar（100）；
要求9：将表employees的名称修改为 employees_info*/

#将表employees的mobile字段修改到Code字段后面
ALTER TABLE employees MODIFY mobile VARCHAR(25) AFTER `code`;

#将表employees的birth字段改名为employee_birth
ALTER TABLE employees CHANGE birth employee_birth DATE NOT NULL ;

#修改sex字段，数据类型为char（1），非空约束
ALTER TABLE employees MODIFY sex CHAR NOT NULL;

#删除字段note
ALTER TABLE employees DROP note;

#增加字段名favoriate_activity,数据类型为varchar（100）
ALTER TABLE employees ADD favoriate_activity VARCHAR(100);

#将表employees的名称修改为 employees_info
RENAME TABLE employees TO employees_info;
