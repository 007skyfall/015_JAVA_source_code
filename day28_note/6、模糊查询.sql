/*
模糊查询：用于查询字符串类型
like 
_：代表一个字符
%：代表0~n个字符

not like
*/

#查询名字中有一个“冰”字
SELECT * FROM t_employee WHERE ename LIKE '%冰%';

SELECT * FROM t_employee WHERE ename LIKE '_冰_';
