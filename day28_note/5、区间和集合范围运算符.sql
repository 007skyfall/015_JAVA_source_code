/*
表示区间范围或集合范围
区间范围：between ..  and ..
	not between .. and ..
集合范围：in(...)
	not in (...)
*/

#查询薪资在[10000,15000]之间的员工
SELECT * FROM t_employee WHERE salary >= 10000 AND salary <= 15000;
SELECT * FROM t_employee WHERE salary BETWEEN 10000 AND 15000;

#查询薪资是10000,15000,12000的员工
SELECT * FROM t_employee WHERE salary =10000 || salary=12000 || salary = 15000;
SELECT * FROM t_employee WHERE salary IN(10000,12000,15000)