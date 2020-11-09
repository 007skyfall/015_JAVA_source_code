/*
逻辑运算符
逻辑与：&&  and
逻辑或：||  or
逻辑非：!
逻辑异或：xor
*/

#查询薪资高于15000的男员工
SELECT * FROM t_employee WHERE salary >15000 && gender = '男';
SELECT * FROM t_employee WHERE salary >15000 AND gender = '男';

#查询薪资低于10000，或者奖金比例是null
SELECT * FROM t_employee WHERE salary < 10000 || commission_pct IS NULL
SELECT * FROM t_employee WHERE salary < 10000 OR commission_pct IS NULL

#查询薪资高于15000的员工
SELECT * FROM t_employee WHERE !(salary<= 15000)

#查询要么薪资低于10000，但奖金比例非空   或  薪资高于或等于10000，奖金比例为空
SELECT * FROM t_employee WHERE salary < 10000 XOR commission_pct IS NULL







