--������� ��� ���� � ��� ������.
select * from students;
--������� ���� ��������� � �������
SELECT name FROM students;
--������� ������ Id �������������
select id from students;
--������� ������ ��� �������������
select name from students;
--������� ������ email �������������
select email from students;
--������� ��� � email �������������
select name,email from students;
--������� id, ���, email � ���� �������� �������������
select id,name,email,created_on from students;
--������� ������������� ��� password 12333
select * from students where password= '12333';
 --������� ������������� ������� ���� ������� 2021-03-26 00:00:00
select * from students where created_on = '2021-03-26 00:00:00';
--������� ������������� ��� � ����� ���� ����� ����
select * from students where name like '%����%';
--������� ������������� ��� � ����� � ����� ���� 8
select * from students where name like '%8';
--������� ������������� ��� � ����� � ���� ����� �
select * from students where name like '%a%';
--������� ������������� ������� ���� ������� 2021-07-12 00:00:00
select * from students where created_on = '2021-07-12 00:00:00' ;
--������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � ����� ������ 1m313
select * from students where created_on = '2021-07-12 00:00:00' and password = '1m313';
--������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � � ������� � ����� ���� ����� Andrey
select * from students where created_on = '2021-07-12 00:00:00' and name like '%Andrey%';
--������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � � ������� � ����� ���� ����� 8
select * from students where created_on = '2021-07-12 00:00:00'and name like '%8%' ;
--������� ������������ � ������� id ����� 10
select * from students where id = '10';
--������� ������������ � ������� id ����� 53
select * from students where id='53';
--������� ������������ � ������� id ������ 40
select * from students where id > '40';
--������� ������������ � ������� id ������ 30
select * from students where id < '30';
--������� ������������ � ������� id ������ 27 ��� ������ 88
select * from students where id <'27' or id >'88';
 --������� ������������ � ������� id ������ ���� ����� 37
select * from students where id <='37';
--������� ������������ � ������� id ������ ���� ����� 37
select * from students where id >='37';
--������� ������������ � ������� id ������ 80 �� ������ 90
select * from students where id >'80' and id <'90';
--������� ������������ � ������� id ����� 80 � 90
select * from students where id between '80' and '90';
--������� ������������� ��� password ����� 12333, 1m313, 123313
select * from students where password IN ('12333', '1m313','123313');
--������� ������������� ��� created_on ����� 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
select * from students where created_on in ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');
--������� ����������� id 
select MIN(id) from students;
--������� ������������.
select max(id) from students;
--������� ���������� �������������
select count(id) from students;
--������� id ������������, ���, ���� �������� ������������. ������������� �� ������� ����������� ���� ���������� �������������.
select id,name,created_on from students order by created_on asc;
--������� id ������������, ���, ���� �������� ������������. ������������� �� ������� �������� ���� ���������� �������������.
select id,name,created_on from students order by created_on desc;