DML���򵥵���ɾ�Ĳ�

mysql> desc employee;
+----------+--------------+------+-----+---------+-------+
| Field    | Type         | Null | Key | Default | Extra |
+----------+--------------+------+-----+---------+-------+
| eid      | int(11)      | YES  |     | NULL    |       |
| ename    | varchar(20)  | YES  |     | NULL    |       |
| sex      | char(2)      | YES  |     | NULL    |       |
| age      | int(11)      | YES  |     | NULL    |       |
| salary   | double(10,2) | YES  |     | NULL    |       |
| birthday | date         | YES  |     | NULL    |       |
+----------+--------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

1��������
��1��insert into ������ values(ֵ�б�);
Ҫ��ֵ�б�ĸ��������͡�˳��ͱ�ṹ��Ӧ
���磺insert into employee values(1,'����','��',23,10000,'1990-9-9');

������֣�ERROR 1366 (HY000): Incorrect string value: '\xD5\xC5\xC8\xFD' for column 'ename' at row 1
˵���ַ����������

set names gbk;

��2��insert into ������(�ֶ��б�) values(ֵ�б�);
Ҫ��ֵ�б�ĸ��������͡�˳���(�ֶ��б�)��Ӧ
���磺
insert into employee (eid,ename) values(2,'����');

��3��ͬʱ�������
insert into ������ values(ֵ�б�1),(ֵ�б�2),(ֵ�б�2)...;
insert into ������(�ֶ��б�) values(ֵ�б�1),(ֵ�б�2),(ֵ�б�2)...;

���磺
insert into employee (eid,ename) values(3,'����'),(4,'����'),(5,'Ǯ��');

insert into employee (eid,ename)values
(3,'����'),
(4,'����'),
(5,'Ǯ��');

2���޸����
��1��update ������ set �ֶ���1 = ֵ1,�ֶ���2 = ֵ2 ....  ��where ������;
˵�������û��where���ͱ�ʾ�޸�������
���磺
update employee set salary = 15000 ;
update employee set salary = 10000 where  eid = 1;

��2��update ������1,������2 set ������1.�ֶ���1 = ֵ1,������2.�ֶ���2 = ֵ2 ....  ��where ������;

create table department(
	did int,
	dname varchar(20)
);
alter table employee add did int;

insert into department values(1,'����'),(2,'����');

#���󣬰ѡ��������޸�Ϊ���������������Ұѡ��������Ĳ����޸�Ϊ2���������ڿ�����
update employee,department set did = 2,dname = '������' ;
ERROR 1052 (23000): Column 'did' in field list is ambiguous ģ�������

update employee,department set employee.did = 2,department.dname = '������' ;

update employee,department set employee.did = 2,department.dname = '������' 
where employee.ename='����' && department.did = 2;

3��ɾ�����ݣ���ɾ��ṹ
��1��delete from ������ ��where ������;
���磺delete from department;
      delete from employee where ename ='Ǯ��';
	  
��2��truncate ������; ��������ձ����ݣ���ṹ����
���磺
truncate employee;

delete from��truncate������
��1��truncateֻ��������ձ�����ֻɾ���������ݣ���delete���Լ�������ֻɾ����������
��2��truncate��ձ���ٶȺܿ죬��delete��ձ������
ԭ��truncate�ǰ�������drop����Ȼ���½�һ���±���ṹ��ԭ��һ����
      delete������ɾ����
��3��truncate������޷��ع��ģ�delete���Գ�������Ȼǰ��������û�ύʱ���Իع���

4����ѯ���ݣ��򵥲�ѯ��
��1��select * from ������;
������ʾ���ű������

���磺select * from employee;

��2��select �ֶ��б� from ������;
������ʾ������

���磺select eid,ename from employee;

��3��select �ֶ��б� from ������ where ����;
������ʾ�����к���
���磺select eid,ename from employee where eid = 3;

��4��select * from ������ where ����;
������ʾ������������
���磺select * from employee where eid = 3;

