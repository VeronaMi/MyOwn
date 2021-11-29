---Создать таблицу employees. 
--id. serial,  primary key, 
-- employee_name. Varchar(50), not null

create table employees (
id serial primary key,
employee_name varchar(50) not null
)

select * from employees;

--Наполнить таблицу employee 70 строками

insert into employees (employee_name)
values ('Алиса'),
('Артём'),
('Полина'),
('Захар'),
('Али'),
('Илья'),
('Мария'),
('Роман'),
('Милана'),
('Дина'),
('Ксения'),
('Стефания'),
('Даниил'),
('Никита'),
('Злата'),
('Фёдор'),
('Максим'),
('Иван'),
('Павел'),
('Екатерина'),
('Ярослав'),
('Макар'),
('Елизавета'),
('Кира'),
('Валерия'),
('Наталья'),
('Александр'),
('Марьяна'),
('Лев'),
('Руслан'),
('Варвара'),
('Михаил'),
('Вера'),
('Диана'),
('Матвей'),
('Владимир'),
('Николь'),
('Марк'),
('Тимур'),
('Евгений'),
('Ирина'),
('Кирилл'),
('Анастасия'),
('Демид'),
('Лука'),
('Денис'),
('Айлин'),
('Андрей'),
('София'),
('Мелания'),
('Георгий'),
('Алия'),
('Марсель'),
('Олеся'),
('Юлия'),
('Егор'),
('Мирослава'),
('Лидия'),
('Таисия'),
('Всеволод'),
('Анна'),
('Алексей'),
('Игорь'),
('Юрий'),
('Николай'),
('Алина'),
('Дмитрий'),
('Аиша'),
('Адель'),
('Степан');

select * from employees;

--Создать таблицу salary id. Serial  primary key,
-- monthly_salary. Int, not null

create table salary (
id serial primary key,
monthly_salary int not null
)

select * from salary;

--Наполнить таблицу salary 15 строками:

insert into salary (monthly_salary)
values (1000),
(1100),
(1200),
(1300),
(1400),
(1500),
(1600),
(1700),
(1800),
(1900),
(2000),
(2100),
(2200),
(2300),
(2400),
(2500);

select * from salary;

--Создать таблицу employee_salary 
-- id. Serial  primary key, 
-- employee_id. Int, not null, unique 
-- salary_id. Int, not null

create table employee_salary (
id serial primary key,
employee_id int unique not null,
salary_id int not null
)

select * from employee_salary;

--Наполнить таблицу employee_salary 40 строками: 

insert into employee_salary (employee_id, salary_id)
values (27,7),
(11,4),
(1,9),
(41,13),
(36,4),
(15,2),
(62,10),
(65,13),
(35,4),
(20,1),
(67,7),
(12,15),
(24,7),
(2,6),
(47,9),
(40,5),
(13,5),
(44,8),
(32,7),
(9,9),
(7,7),
(48,5),
(29,11),
(4,7),
(3,10),
(53,5),
(46,6),
(55,9),
(19,7),
(6,7),
(71,1),
(72,2),
(73,3),
(74,4),
(75,5),
(76,6),
(77,7),
(78,8),
(79,9),
(80,10);

--Создать таблицу roles 
--id. Serial  primary key, 
-- role_name. int, not null, unique

create table roles (
id serial primary key,
role_name int unique not null
)

select * from roles;

--Поменять тип столба role_name с int на varchar(30)

ALTER TABLE roles ALTER COLUMN role_name TYPE varchar(30);

--Наполнить таблицу roles 20 строками:

insert into roles (role_name)
values ('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');

--Создать таблицу roles_employee. - id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)


create table roles_employee (
id serial primary key,
employee_id int unique not null,
role_id int not null,
foreign key (employee_id)
	references employees (id),
foreign key (role_id)
	references roles (id)
)

select * from roles_employee;

--Наполнить таблицу roles_employee 40 строками:

insert into roles_employee (employee_id, role_id)
values(58,5),
(61,20),
(51,12),
(9,4),
(25,13),
(68,5),
(16,9),
(2,5),
(4,8),
(35,17),
(3,4),
(52,9),
(49,12),
(48,19),
(34,13),
(38,4),
(21,3),
(43,14),
(62,3),
(39,15),
(29,1),
(41,9),
(14,17),
(65,8),
(1,14),
(27,5),
(23,16),
(44,8),
(60,9),
(31,12),
(15,17),
(22,18),
(30,17),
(59,19),
(55,7),
(63,1),
(32,5),
(20,17),
(67,4),
(46,14);

select * from roles_employee;