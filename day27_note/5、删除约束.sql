ɾ��Լ����
1������Լ��
alter table  ������ drop  primary key;

2��ɾ��Ψһ��Լ��
alter table  ������ drop index Ψһ����������;

���ͣ���Ϊ��������Ψһ�������������Լ������ʱ�����Զ�����һ��������������߲�ѯ�ٶȣ���
��Ϊɾ��Ψһ�������õ���ɾ��������

show index  from ������;

alter table employee drop index cardid;

3��ɾ���ǿպ�Ĭ��ֵԼ��
alter table employee modify ename varchar(20) ; #ȥ���ǿպ�Ĭ��ֵ

4��ɾ�����
alter table  ������ drop foreign key ���Լ����;
���磺alter table employee drop foreign key employee_ibfk_1;

��β鿴���Լ����
SELECT * FROM information_schema.table_constraints WHERE table_name = '������';

SELECT * FROM information_schema.table_constraints WHERE table_name = 'employee';