/*
字符串函数
CONCAT(S1,S2,......,Sn):字符串拼接，不能使用+
LENGTH(s)：字符串的字节数
CHAR_LENGTH(s)：字符串的字符数
INSERT(原字符串,开始位置，几个字符，新字符串）：把原字符串从开始位置的几个字符替换为新字符串
	字符串的开始位置是1
	
*/
#CONCAT(S1,S2,......,Sn)
#查询
SELECT CONCAT(firstname , lastname) AS "姓名" FROM employees_info;

#查询名字的长度
SELECT ename,LENGTH(ename),CHAR_LENGTH(ename) FROM t_employee;

SELECT INSERT(ename,2,0,' ') FROM t_employee;

SELECT UPPER('hello'),LOWER('HELLO');

#首字母变大写
SELECT CONCAT(UPPER(LEFT(firstname,1)) ,RIGHT(firstname,CHAR_LENGTH(firstname)-1)) FROM employees_info;

#把ename凑够3个字符，不够3个字符在左边填充xx
SELECT LPAD(ename,3,'——') FROM t_employee;

SELECT CONCAT('[',TRIM('     hello    world    '),']');
SELECT CONCAT('[',LTRIM('     hello    world    '),']');
SELECT CONCAT('[',RTRIM('     hello    world    '),']');

SELECT CONCAT('[',TRIM(BOTH ' ' FROM '     hello    world    '),']');
SELECT CONCAT('[',TRIM(BOTH '&' FROM '&&&&&hello    world&&&&'),']');
SELECT CONCAT('[',TRIM(LEADING '&' FROM '&&&&&hello    world&&&&'),']');
SELECT CONCAT('[',TRIM(TRAILING '&' FROM '&&&&&hello    world&&&&'),']');

SELECT CONCAT_WS