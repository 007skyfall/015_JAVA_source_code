�������е�Ҫ��auto_increment
1��һ����ֻ����һ����������
2���������б����Ǽ��У�Ψһ��������
3���������б�������������

create table t_stu(
	sid int primary key auto_increment,
	sname varchar(100) not null,
	gender char default '��' not null,
	card_id char(18) unique key,
	birthday date,
	address varchar(200)
);

insert into t_stu values(3,'����',default,'123456789123456780','1990-1-1','�긣Է');
insert into t_stu values(null,'����',default,'123456789123456781','1990-2-2','�긣Է');
insert into t_stu values(0,'����',default,'223456789123456781','1990-2-2','�긣Է');
insert into t_stu(sname,card_id) values('����','223456456123456781');

������������е�ֵʱ �����ָ�������ֵ���Ͱ�����ֵ�������ָ��null��0�Ͱ�����������
