/*
1、字段的别名：  
字段名 as 别名
（1）如果没有空格，""可以省略，建议保留
（2）as可以省略，建议保留
*/

SELECT * FROM t_department;

SELECT did AS "部门编号", dname AS "部门名称", description AS "部门简介"
FROM t_department;

/*
飘号：`
*/
SELECT `id`,`name` FROM `t_stu`;

/*
去重：distinct
*/
#查询员工表，查询所有的领导编号
SELECT DISTINCT `mid` FROM t_employee; 