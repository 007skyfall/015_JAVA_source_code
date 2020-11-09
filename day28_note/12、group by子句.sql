/*
分组函数
（1）count()
	a：count(*)  统计的是行数
	b：count(常量) 统计的是行数
	c：count(字段名) 统计是非NULL的行数
（2）sum()
（3）avg()
（4）max()
（5）min()
*/
#查找所有的员工的人数
SELECT COUNT(*) AS "总人数" FROM t_employee;
SELECT COUNT(1) AS "总人数" FROM t_employee;
SELECT COUNT('张三') AS "总人数" FROM t_employee;

SELECT COUNT(eid) AS "总人数" FROM t_employee;

#查找员工的总工资
SELECT SUM(salary) AS "工资总额" FROM t_employee;

#查询平均工资
SELECT AVG(salary) AS "平均工资" FROM t_employee;

#查询最高工资和最低工资
SELECT MAX(salary) AS "最高工资", MIN(salary) AS "最低工资" FROM t_employee;


/*
分组函数结合group by 使用
*/
#查询每个部门的人数
SELECT did,COUNT(*) 
FROM t_employee
GROUP BY did;

SELECT did,ename,COUNT(*) 
FROM t_employee
GROUP BY did;  #错误的，ename和分组无关

#查找每个部门的男、女各多少人
SELECT did,gender,COUNT(*)
FROM t_employee
GROUP BY did,gender;

#查找每个部门的工资总额
SELECT did,SUM(salary) 
FROM t_employee
GROUP BY did;

#查找每个部门的平均工资
SELECT did,AVG(salary) 
FROM t_employee
GROUP BY did;

#查找男、女的平均工资
SELECT gender,AVG(salary) 
FROM t_employee
GROUP BY gender;

#查找每个部门的最高工资，最低工资
SELECT did,MAX(salary),MIN(salary)
FROM t_employee
GROUP BY did;

#查找每个部门的男、女，最高工资，最低工资
SELECT did,gender,MAX(salary),MIN(salary)
FROM t_employee
GROUP BY did,gender;


/*
where和group by
*/
#查询每个部门，薪资高于15000的员工的人数
SELECT did,COUNT(*)
FROM t_employee
WHERE salary>15000
GROUP BY did;

/*
group by ，结合  关联查询
*/
#查询每个部门编号，部门的名称，部门的平均工资
SELECT t_employee.did,dname,AVG(salary)
FROM t_employee INNER JOIN t_department
ON t_employee.`did` = t_department.`did`
GROUP BY t_employee.did;

#查询所有部门编号，部门的名称，部门的平均工资，包括没有员工的部门
SELECT t_department.did,dname,AVG(salary)
FROM t_employee RIGHT JOIN t_department
ON t_employee.`did` = t_department.`did`
GROUP BY t_employee.did;

