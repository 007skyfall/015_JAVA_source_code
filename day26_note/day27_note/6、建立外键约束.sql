Լ����
����Լ����Ψһ��Լ�������Լ�����ǿ�Լ����Ĭ��ֵԼ�������Լ��(check)

���Լ����
���������ʹӱ��ӱ�����ֵ�����ã��ο�����ϵ��

���ű����ű�š��������ơ����ż��
Ա����Ա����ţ�Ա��������н�ʣ�...�����ڵĲ��ű��

���ű�������Ա����ʾ�ӱ�Ա�����"���ڵĲ��ű��"�ο������ã����ű��"���ű��"

�����������ʲô��ͬ��
��1�������Ǹ��ӱ���Ӻ��޸ļ�¼ʱ����ô����е�ֵ��Ҫ�ܵ������Լ��
���磺Ա����ѡԱ�����ڲ��ű��ʱ��Ҫ�����ű��Ƿ����������

��2���������޸Ļ�ɾ������ı��ο��е�ֵʱ��Ҫ�ܵ��ӱ��Լ��
���磺���޸Ĳ��ű�Ĳ��ű��ʱ��Ҫ��������ű���Ƿ���Ա�������ù�

��3��ɾ������Ҫ�ܵ��ӱ��Լ��
���磺Ҫɾ�����ű�ʱ����ΪԱ�������������ο������������޷�ɾ��


1����ν������
����ʱ���������
ǰ�᣺�Ƚ��������ڽ����ӱ�
create table ������(
	�ֶ�1 �������� primary key,
	�ֶ�2 �������� [unique key],
	�ֶ�3 �������� [not null] [default Ĭ��ֵ]
	....
);

create table �ӱ���(
	�ֶ�1 �������� primary key,
	�ֶ�2 �������� [unique key],
	�ֶ�3 �������� [not null] [default Ĭ��ֵ]
	....
	
	foreign key(�ӱ��ĳ���ֶ�) references ����(���ο����ֶ�)
);
˵��������(���ο����ֶ�)��������һ�������л�Ψһ���С�

���磺
create table department(
	did int primary key,  #���ű��
	dname varchar(20) not null,
	description varchar(50)
);

create table employee(
	eid int primary key,
	ename varchar(20) not null,
	salary double not null,
	deptno int,  #���ڲ��ű��
	foreign key(deptno) references department(did)
);

insert into department values(1,'����','��Ǯ��');
insert into employee values(1,'����',10000,1);
insert into employee values(2,'����',20000,2);

update department set did = 2 where dname ='����';


2�������
alter table �ӱ��� add foreign key (�ӱ��ĳ���ֶ�) references ������(���ο����ֶ�);

3�������Լ����ϵ���Զ������
��1��Ĭ�ϵģ��ϸ�Լ��
		on update restrict 
		on delete restrict
��2������Լ����cascade 
		on update cascade  
		on delete cascade
��3���ÿգ�set null		
		on update set null 
		on delete set null
��4���޶�����no action 		
		on update no action 
		on delete no action
��mysql�У�no action 	�ȼ���  restrict

˵����on update�Ĳ��Ժ�on delete���Բ�ͬ

create table department(
	did int primary key,  #���ű��
	dname varchar(20) not null,
	description varchar(50)
);

create table employee(
	eid int primary key,
	ename varchar(20) not null,
	salary double not null,
	deptno int,  #���ڲ��ű��
	foreign key(deptno) references department(did) on update cascade on delete cascade
);	

insert into department values(1,'����','��Ǯ��');
insert into employee values(1,'����',10000,1);
insert into employee values(2,'����',10000,null);
update department set did = 2 where dname ='����';
��
delete from department where did = 2; 

create table department(
	did int primary key,  #���ű��
	dname varchar(20) not null,
	description varchar(50)
);

create table employee(
	eid int primary key,
	ename varchar(20) not null,
	salary double not null,
	deptno int,  #���ڲ��ű��
	foreign key(deptno) references department(did) on update set null on delete set null
);	
insert into department values(1,'����','��Ǯ��');
insert into employee values(1,'����',10000,1);
insert into employee values(2,'����',10000,null);
update department set did = 2 where dname ='����';
��
delete from department where did = 2; 

���磺
�������붩����ϸ��
	������������������ϸ���Ǵӱ�
	������ϸ���н��������  foreign key(�������) references ������(�������) on update cascade on delete cascade

���ű��Ա����
	���ű�ʾ����Ա�����Ǵӱ�
	Ա�����н�������� foreign key(���ű��) references ���ű�(���ű��) on update cascade on delete restrict
	Ա�����н�������� foreign key(���ű��) references ���ű�(���ű��) on update cascade on delete set null
	
	