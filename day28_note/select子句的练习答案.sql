select子句的练习答案

select 成绩表.学生ID,avg(成绩)
from 成绩表 inner join 学生表
on 成绩表.学生ID  = 学生表.学生id
where 学生表.age < 16
group by 成绩表.学生ID
having avg(成绩) < 60
order by avg(成绩) desc
limit 0,10;

