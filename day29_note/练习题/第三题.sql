CREATE DATABASE Market;

USE Market;

CREATE TABLE customers(
	c_num INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
	c_name VARCHAR(50),
	c_contact VARCHAR(50),
	c_city VARCHAR(50),
	c_birth DATE NOT NULL
);

/*
要求3：将c_contact字段插入到c_birth字段后面
要求4：将c_name字段数据类型改为 varchar(70)
要求5：将c_contact字段改名为c_phone
要求6：增加c_gender字段，数据类型为char(1)
要求7：将表名改为customers_info
要求8：删除字段c_city。
*/

#要求3：将c_contact字段插入到c_birth字段后面
ALTER TABLE customers MODIFY c_contact VARCHAR(50) AFTER c_birth;

#将c_name字段数据类型改为 varchar(70)
ALTER TABLE customers MODIFY c_name VARCHAR(70);

#将c_contact字段改名为c_phone
ALTER TABLE customers CHANGE c_contact c_phone VARCHAR(50);

#增加c_gender字段，数据类型为char(1)
ALTER TABLE customers ADD c_gender CHAR;

#将表名改为customers_info
ALTER TABLE customers RENAME customers_info;

#删除字段c_city。
ALTER TABLE customers_info DROP c_city;
