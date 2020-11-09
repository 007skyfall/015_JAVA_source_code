/*
order by：排序
order by 字段列表
（1）如果字段名后面没有写（desc,asc）默认就是升序
（2）每一个字段后面可以单独指定是升序（asc）还是降序（desc）
*/
#查询员工的姓名、薪资，按照薪资升序排列
SELECT ename,salary FROM t_employee ORDER BY salary;


#查询员工的姓名、薪资，按照薪资降序排列
SELECT ename,salary FROM t_employee 
ORDER BY salary DESC;

#查询员工的编号、姓名、薪资，按照薪资降序排列，如果薪资相同，按照编号升序排列
SELECT eid,ename,salary FROM t_employee
ORDER BY salary DESC,eid ;

#查询每一个部门的平均工资，并且按照平均工资升序排列
SELECT did,AVG(salary)
FROM t_employee
GROUP BY did
ORDER BY AVG(salary)

#查询每一个部门的平均工资，要求只显示平均工资高于12000，并且按照平均工资升序排列
SELECT did,AVG(salary)
FROM t_employee
GROUP BY did
HAVING AVG(salary)>12000
ORDER BY AVG(salary)

#查询每一个部门女员工的平均工资，要求只显示平均工资高于12000，并且按照平均工资升序排列
SELECT did,AVG(salary)
FROM t_employee
WHERE gender = '女'
GROUP BY did
HAVING AVG(salary)>12000
ORDER BY AVG(salary)

