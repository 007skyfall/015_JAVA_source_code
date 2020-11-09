/*
比较运算符:
大于：>
小于：<
大于等于：>=
小于等于：<=
不等于：!=   <>
等于：=
安全等于：<=>  可以用于判断null值，建议null的判断使用is null和is not null
*/

#查询薪资高于10000元的员工
SELECT * FROM t_employee WHERE salary > 10000;

#查询领导编号不是7号的员工
SELECT * FROM t_employee WHERE `mid` != 7;
SELECT * FROM t_employee WHERE `mid` <> 7;

#查询领导编号是7号的员工
SELECT * FROM t_employee WHERE `mid` = 7;

#查询奖金比例是null的员工
SELECT * FROM t_employee WHERE commission_pct = NULL; #错误的
SELECT * FROM t_employee WHERE commission_pct <=> NULL; 
SELECT * FROM t_employee WHERE commission_pct IS NULL; 

#查询所有员工的姓名，薪资，奖金比例，实发工资
#实发工资 = 薪资 + 薪资 * 奖金比例
SELECT ename,salary,commission_pct, salary + salary*commission_pct  AS "实发工资" 
FROM t_employee;  #错误的
  
SELECT ename,salary,commission_pct, salary + salary * IFNULL(commission_pct,0)  AS "实发工资" 
FROM t_employee;


/*
建议设计表的时候，要考虑null
	可以设计为非空，再结合默认值，字符串可以默认为''，数值类型可以默认为0
在查询和计算时，也要考虑null
	判断用<=>或is null或is not null
	计算时可以使用 ifnull(xx,value)
*/




