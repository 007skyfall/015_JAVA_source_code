/*
limit 分页：
limit m,n
m：起始行下标
n：查询的记录数

设第几页为page，每页的显示记录数为count
m = (page-1)*count
n = count
*/
#查询员工的信息，每页只显示5条记录，第一页
SELECT * FROM t_employee LIMIT 0,5;

#查询员工的信息，每页只显示5条记录，第二页
SELECT * FROM t_employee LIMIT 5,5;

#查询员工的信息，每页只显示10条，第三页
SELECT * FROM t_employee LIMIT 20,10;

#查询所有女员工的信息，每页显示3条，第4页
SELECT * FROM t_employee 
WHERE gender = '女'
LIMIT (4-1)*3,3;  #错误的

SELECT * FROM t_employee 
WHERE gender = '女'
LIMIT 9,3;

#查询每个部门的女员工的平均工资，并且按照平均工资降序排列，每页只显示2条，查询第二页
SELECT did,AVG(salary) FROM t_employee 
WHERE gender = '女'
GROUP BY did
ORDER BY AVG(salary) DESC
LIMIT 2,2;

#查询每个部门编号和名称，每个部门的女员工的平均工资，并且按照部门编号升序排列，
#每页只显示2条，查询第二页
SELECT emp.did,dept.dname,AVG(salary) 
FROM t_employee AS emp INNER JOIN t_department AS dept
ON emp.did = dept.did
WHERE gender = '女'
GROUP BY emp.did
ORDER BY emp.did
LIMIT 2,2;


