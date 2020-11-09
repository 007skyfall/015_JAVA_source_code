/*
having 子句，也是条件的筛选

where和having的区别：
（1）where后面不允许使用分组函数
因为分组函数是用于统计结果，where后面的条件是从原表中筛选，不是从计算结果中筛选
having用于计算结果的筛选
（2）having只用于group by分组统计语句
*/

#查询每个部门的平均工资，并且只显示平均工资低于12000
#查询每个部门的平均工资
SELECT did,AVG(salary)
FROM t_employee
GROUP BY did;

SELECT did,AVG(salary)
FROM t_employee
GROUP BY did
HAVING AVG(salary) < 12000

/*
where,group by,having一起使用
*/
#查询每个部门的女员工的平均工资，显示高于12000的
SELECT did,AVG(salary)
FROM t_employee
WHERE gender = '女'
GROUP BY did
HAVING AVG(salary)>12000
