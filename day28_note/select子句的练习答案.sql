select�Ӿ����ϰ��

select �ɼ���.ѧ��ID,avg(�ɼ�)
from �ɼ��� inner join ѧ����
on �ɼ���.ѧ��ID  = ѧ����.ѧ��id
where ѧ����.age < 16
group by �ɼ���.ѧ��ID
having avg(�ɼ�) < 60
order by avg(�ɼ�) desc
limit 0,10;

