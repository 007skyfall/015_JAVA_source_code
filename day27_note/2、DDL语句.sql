һ��DDL
��һ���������ݿ�
1���������ݿ�
CREATE DATABASE ���ݿ���;

create database ���ݿ���;

���磺create database bigdata1111;

2���鿴��ǰ�û��ܹ����������е����ݿ�
show databases;

3��ʹ��ĳ�����ݿ�
use ���ݿ���;

4��ɾ�����ݿ�
drop database ���ݿ���;

�������������
1���鿴��ǰ���ݿ��¶���ʲô��񣬵�ǰ�û��ܹ��������б��
show tables; #ǰ�����use��䣬����ᱨ��No database selected
show tables from ���ݿ���;

2��������񣨼򵥰棩
create table ������(
	�ֶ���1 ��������,
	�ֶ���2 ��������,
	...
);

create table ������(�ֶ���1 ��������,�ֶ���2 ��������,...);

���磺
Ա������š����������䡢н�ʡ�����
create table employee(
	eid int,
	ename varchar(20),
	age int,
	salary double(10,2),
	birthday date	
);

3���鿴��ṹ
desc ������;
show create table ������;

4��ɾ�����
drop table ������;

5���޸ı�ṹ
��1���޸ı�����
alter table �ɱ��� rename �±���;
rename table �ɱ��� to �±���;
���磺
alter table employee rename emp;
rename table emp to employee;

��2������һ��
A:alter table ������  add ��column���ֶ��� ��������;
���磺
alter table employee add tel char(11);

B:alter table ������  add ��column���ֶ��� �������� after ��һ���ֶ�;
���磺
alter table employee add gender char after ename;


C:alter table ������  add ��column���ֶ��� �������� first;

��3��ɾ��һ��
alter table ������  drop ��column���ֶ���;
���磺alter table employee drop tel;

��4���޸��е���������
alter table ������  modify ��column���ֶ��� ���������� ��after ��һ���ֶ�/first��;
���磺alter table employee modify gender char(2);

��5���޸��е�����
alter table ������  change ��column�����ֶ��� ���ֶ��� �������� ��after ��һ���ֶ�/first��;
���磺alter table employee change gender sex char(2);