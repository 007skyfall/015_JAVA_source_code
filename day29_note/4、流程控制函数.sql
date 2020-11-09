/*
4、流程控制函数
（1）ifnull(x,value)：如果x为null，那么就用value
（2）if(x,value1,value2)：如果x为true，就用value1，否则用value2
（3）case 
   when 条件  then 值
   when 条件  then 值
   when 条件  then 值
   ...
   else 值
   end
   相当于java的if..else
  （4）case 表达式
  when 常量值 then 值
  when 常量值 then 值
  ...
  else 值
  end
  相当于Java的switch..case
   
*/
SELECT ename,salary+salary*IFNULL(commission_pct,0) FROM t_employee;

SELECT ename,ROUND(salary+salary*IFNULL(commission_pct,0),2) FROM t_employee;

SELECT IF(15%2=0,'偶数','奇数')

/*
如果薪资>=20000，显示“高薪”
如果薪资>=15000,<20000，显示“正常"
如果薪资<15000,>=5000显示低薪
如果薪资<5000，显示低保
*/
SELECT ename,CASE 
WHEN salary>=20000 THEN '高薪'
WHEN salary>=15000 THEN '正常'
WHEN salary>5000 THEN '低薪'
ELSE '低保'
END AS "薪资水平"
FROM t_employee;

#查询年龄
#如果是13，显示十三
#如果是14，显示十四
#...
SELECT sname, CASE age
WHEN 13 THEN '十三'
WHEN 14 THEN '十四'
WHEN 15 THEN '十五'
ELSE age
END 
FROM stu;

#统计每个性别的人数，并且就合计多少人
SELECT gender,COUNT(*) FROM t_employee GROUP BY gender;
SELECT gender,COUNT(*) FROM t_employee GROUP BY gender WITH ROLLUP;

SELECT IFNULL(gender,'合计'),
COUNT(*) FROM t_employee GROUP BY gender WITH ROLLUP;

SELECT CASE 
WHEN gender IS NULL THEN '合计'
ELSE gender END,
COUNT(*) FROM t_employee GROUP BY gender WITH ROLLUP;


SELECT IFNULL(did,'合计'),
COUNT(*) FROM t_employee GROUP BY did WITH ROLLUP;