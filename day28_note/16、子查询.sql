/*
子查询：嵌套在其他SQL语句中的查询，叫查询。
子查询可以嵌套在另一个查询中，也可以嵌套在另一个update等语句中。

子查询分两类：
1、where型
子查询嵌套在where的后面
	单行操作符：=,>=,>,<,<=，!=  这些运算符后面是接一个值
	多行操作符：in(...)  
	单行操作符 all(...) 或  单行操作符 any(...) 
2、from型
子查询嵌套在from的后面
把子查询的结果作为一张临时表，给这个结果取别名，作为一张表使用，再做联合查询。

*/
#练习1：查询孙红雷的领导的工资
#(1)孙红雷的领导编号
SELECT `mid` FROM t_employee WHERE ename = '孙红雷'
#(2)他领导的工资
SELECT salary FROM t_employee WHERE eid = (SELECT `mid` FROM t_employee WHERE ename = '孙红雷');

#练习2：查询比范冰凉工资高的员工
SELECT * FROM t_employee WHERE salary > (SELECT salary FROM t_employee WHERE ename = '范冰凉');

#练习3：查询和孙红雷，谢娜同一个部门的员工
#查询孙红雷，谢娜他俩的部门编号
SELECT did FROM t_employee WHERE ename IN ('孙红雷','谢娜')

#查询和孙红雷，谢娜同一个部门的员工
SELECT * FROM t_employee WHERE did IN(SELECT did FROM t_employee WHERE ename IN ('孙红雷','谢娜'))

#练习4：查询最高工资的员工的信息
#方法一：查询最高工资的值
SELECT MAX(salary) FROM t_employee
#查询最高工资的员工的信息
SELECT * FROM t_employee WHERE salary = (SELECT MAX(salary) FROM t_employee)

#方法二：查询所有人的工资
SELECT salary FROM t_employee
#查询最高工资的员工的信息
SELECT * FROM t_employee WHERE salary >= ALL(SELECT salary FROM t_employee)

#练习5：查询比本部门的平均工资高的员工
#先要查询每一个部门的平均工资
SELECT did,AVG(salary) FROM t_employee GROUP BY did

#查询比本部门的平均工资高的员工
SELECT t_employee.did,temp.ping,ename,salary 
FROM t_employee INNER JOIN (SELECT did,AVG(salary) AS ping FROM t_employee GROUP BY did) AS temp
ON t_employee.did = temp.did
WHERE salary > temp.ping

#练习6：查询部门信息，该部门必须有员工，不查没有员工的部门
SELECT DISTINCT t_department.* 
FROM t_department RIGHT JOIN t_employee
ON  t_department.did = t_employee.`did`

SELECT * FROM t_department 
WHERE EXISTS (SELECT * FROM t_employee WHERE t_employee.did = t_department.did);
#运行过程：把主查询t_department的每一条记录，代入子查询，看是否有结果，有就保留这个记录

