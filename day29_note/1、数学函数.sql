/*
单行函数：
（1）数学函数
（2）日期时间函数
（3）字符串处理函数
（4）流程控制函数
（5）加密等函数

*/

/*
一、数学函数
ceil：往上取整
floor：往下取整
round：四舍五入
  round(x)：舍去小数位
  round(x,d)：保留小数点后D位四舍五入
TRUNCATE(x,d)：直接截掉，小数点后保留d位
*/
SELECT SQRT(4);

SELECT CEIL(2.6),FLOOR(2.6),ROUND(2.6),TRUNCATE(2.63757,2);
SELECT CEIL(2.1),FLOOR(2.1),ROUND(2.1),TRUNCATE(2.45457,2);

SELECT did,AVG(salary) FROM t_employee GROUP BY did;

SELECT did,AVG(salary),ROUND(AVG(salary),2),TRUNCATE(AVG(salary),2) FROM t_employee GROUP BY did;

