/*
二、左连接
1、查询结果是A表
select 字段列表
from A表名 left join B表名
on A表与B表的关联条件
where 其他筛选条件

2、查询结果是A - A∩B
select 字段列表
from A表名 left join B表名
on A表与B表的关联条件
where A表的关联字段 is null
其他筛选条件
*/

#查询所有的员工，包括那些没有安排部门的员工，如果有安排部门的员工，显示对应的部门信息
#查询结果是A
SELECT * 
FROM t_employee LEFT JOIN t_department
ON t_employee.did = t_department.did;
 
#查询所有的女员工，包括那些没有安排部门的女员工，如果有安排部门的女员工，显示对应的部门信息 
 SELECT * 
FROM t_employee LEFT JOIN t_department
ON t_employee.did = t_department.did
WHERE t_employee.`gender` = '女';

#查询那些没有安排部门的员工
 SELECT * 
FROM t_employee LEFT JOIN t_department
ON t_employee.did = t_department.did
WHERE t_employee.did IS NULL;

#查询所有的部门，包括那些没有员工的部门，如果部门有员工，就显示员工信息
SELECT * 
FROM t_department LEFT JOIN t_employee
ON t_employee.did = t_department.`did`;