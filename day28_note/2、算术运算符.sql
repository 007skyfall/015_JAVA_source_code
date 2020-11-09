/*
算术运算符：
加：+
减：-
乘：*
除：/（可以保留小数部分）	div（不保留小数部分）
取模：%  mod
*/

#修改孙红雷的薪资，涨100元
UPDATE t_employee SET salary = salary + 100 WHERE ename = '孙红雷';

#修改孙红雷的薪资，减200元
UPDATE t_employee SET salary = salary - 200 WHERE ename = '孙红雷';

#修改孙红雷的薪资，涨为原来的1.2倍
UPDATE t_employee SET salary = salary * 1.2 WHERE ename = '孙红雷';

#查询孙红雷，每天挣多少钱
SELECT salary / 30 AS "日薪" FROM t_employee WHERE ename = '孙红雷';
SELECT salary DIV 30 AS "日薪" FROM t_employee WHERE ename = '孙红雷';

#求5%2
SELECT 5%2;
SELECT 5 MOD 2;
