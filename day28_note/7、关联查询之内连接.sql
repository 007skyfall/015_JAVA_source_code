/*
关联查询：

A 与 B 联合查询
结果有七种：
（1）A
（2）A - A ∩ B
（3）B
（4）B - A ∩ B
（5）A ∩ B
（6）A ∪ B
（7）A ∪ B - A ∩ B

联合查询的分类：
1、内连接  INNER JOIN 
2、外连接
（1）左外连接，简称左连接  LEFT JOIN
（2）右外连接，简称右连接  RIGHT JOIN
（3）全外连接（mysql暂时不支持）  FULL JOIN

联合查询要避免笛卡尔积：
	加联合查询的条件
当n多张表联合查询时，联合查询的条件是n-1个	
例如：A与B联合查询，关联条件是1个
     A与B、C联合查询，关联条件是2个
     ....
*/

#员工表t_employee和部门表t_department联合查询
#查询所有员工的信息和他们所在的部门的信息
SELECT * FROM t_employee, t_department;

/*
一、内连接
1、方式一：
select 字段列表  
from A表名 , B表名
where A表与B表的关联条件 and 其他筛选条件
....

2、方式二：
select 字段列表 
from A表名 INNER JOIN B表名
on A表与B表的关联条件
where 其他的筛选条件
...

*/

#查询所有员工的信息和他们所在的部门的信息
SELECT * FROM t_employee, t_department
WHERE t_employee.did = t_department.did;

SELECT * FROM t_employee INNER JOIN t_department
ON t_employee.did = t_department.did;

#查询员工的编号，姓名，部门的编号，名称
SELECT eid,ename,t_employee.did,dname
FROM t_employee, t_department
WHERE t_employee.did = t_department.did;

SELECT eid,ename,t_employee.did,dname
FROM t_employee INNER JOIN  t_department
ON t_employee.did = t_department.did;

#查询“教学部”的所有员工
SELECT * FROM t_employee, t_department
WHERE t_employee.did = t_department.did  #关联条件
AND t_department.`dname` = '教学部';   #筛选条件

SELECT * FROM t_employee INNER JOIN t_department
ON t_employee.did = t_department.did  #关联条件
WHERE t_department.`dname` = '教学部';   #筛选条件

#查询“教学部”的所有男员工
SELECT * FROM t_employee, t_department
WHERE t_employee.did = t_department.did  #关联条件
AND t_department.`dname` = '教学部'   #筛选条件
AND t_employee.`gender` = '男';  #筛选条件

SELECT * FROM t_employee INNER JOIN  t_department
ON t_employee.did = t_department.did  #关联条件
WHERE t_department.`dname` = '教学部'   #筛选条件
AND t_employee.`gender` = '男';  #筛选条件
