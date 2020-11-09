/*
自连接：
	两个表的关联查询。
	这两个表本质上是一张表，虚拟成两张表。
	
给表取别名 	
*/

#查询所有员工的编号，姓名，以及他的领导的编号和姓名，不包括那些没有领导的员工
SELECT emp.`eid`,emp.`ename`,emp.`mid`,mgr.`ename`
FROM t_employee AS emp INNER JOIN t_employee AS mgr
#t_employee AS emp意思是t_employee作为员工表使用
#t_employee AS mgr意思是t_employee作为领导表使用
ON emp.mid = mgr.eid;
#员工的领导编号 = 领导的员工的编号

#查询所有员工的编号，姓名，以及他的领导的编号和姓名，包括那些没有领导的员工
SELECT emp.`eid`,emp.`ename`,emp.`mid`,mgr.`ename`
FROM t_employee AS emp LEFT JOIN t_employee AS mgr
ON emp.mid = mgr.eid;
