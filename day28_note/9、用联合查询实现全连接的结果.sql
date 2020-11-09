/*
mysql不支持FULL JOIN，但是可以实现
（6）A ∪ B
（7）A ∪ B - A ∩ B

（6）A ∪ B
select 字段列表
from A表名 left join B表名
on A表与B表的关联条件
where 其他筛选条件

union  #合并

select 字段列表
from A表名 right join B表名
on A表与B表的关联条件
where 其他筛选条件


（7）A ∪ B - A ∩ B
select 字段列表
from A表名 left join B表名
on A表与B表的关联条件
where A表的关联字段 is null
其他筛选条件

union

select 字段列表
from A表名 right join B表名
on A表与B表的关联条件
where A表的关联字段 is null
其他筛选条件
*/
#查询所有员工和所有部门，包括没有部门的员工和没有员工的部门，如果有对应的信息的就对上
SELECT * 
FROM t_employee LEFT JOIN t_department
ON t_employee.did = t_department.`did`

UNION

SELECT * 
FROM t_employee RIGHT JOIN t_department
ON t_employee.did = t_department.`did`
;


#查询那些没有部门的员工和没有员工的部门

SELECT * 
FROM t_employee LEFT JOIN t_department
ON t_employee.did = t_department.`did`
WHERE t_employee.did IS NULL

UNION

SELECT * 
FROM t_employee RIGHT JOIN t_department
ON t_employee.did = t_department.`did`
WHERE t_employee.did IS NULL
;
