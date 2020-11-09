SELECT chengji.sid,stu.`sname`,AVG(score)
FROM chengji INNER JOIN stu
ON chengji.sid  = stu.sid
WHERE stu.age < 16
GROUP BY chengji.sid
HAVING AVG(score) < 60
ORDER BY AVG(score) DESC
LIMIT 0,10;


