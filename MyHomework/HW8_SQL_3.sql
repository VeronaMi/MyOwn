--1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select employee_name, monthly_salary
from employees join employee_salary on employees.id=employee_salary.employee_id
join salary on employee_salary.salary_id=salary.id

 --2. ������� ���� ���������� � ������� �� ������ 2000.
select employee_name, monthly_salary
from employees join employee_salary on employees.id=employee_salary.employee_id
join salary on employee_salary.salary_id=salary.id
where monthly_salary<2000

 --3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employee_name, monthly_salary
from employee_salary left join employees on employees.id=employee_salary.employee_id
join salary on employee_salary.salary_id=salary.id
where employee_name is null;

 --4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employee_name, monthly_salary
from employee_salary left join employees on employees.id=employee_salary.employee_id
join salary on employee_salary.salary_id=salary.id
where monthly_salary<2000 and employee_name is null;

 --5. ����� ���� ���������� ���� �� ��������� ��.
select employee_name, monthly_salary
from employee_salary join employees on employees.id=employee_salary.employee_id
join salary on employee_salary.salary_id=salary.id
where monthly_salary is null;

 --6. ������� ���� ���������� � ���������� �� ���������.
select employee_name, role_name
from employees join roles_employee on employees.id=roles_employee.employee_id
join roles on roles_employee.role_id=roles.id;

 --7. ������� ����� � ��������� ������ Java �������������.
select employee_name, role_name
from employees join roles_employee on employees.id=roles_employee.employee_id
join roles on roles_employee.role_id=roles.id
where role_id>=4 and role_id<=6;

 --8. ������� ����� � ��������� ������ Python �������������.
select employee_name, role_name
from employees join roles_employee on employees.id=roles_employee.employee_id
join roles on roles_employee.role_id=roles.id
where role_id>=1 and role_id<=3;

 --9. ������� ����� � ��������� ���� QA ���������.
select employee_name, role_name
from employees join roles_employee on employees.id=roles_employee.employee_id
join roles on roles_employee.role_id=roles.id
where role_id>=10 and role_id<=12 or role_id>=18 and role_id<=20;

 --10. ������� ����� � ��������� ������ QA ���������.
select employee_name, role_name
from employees join roles_employee on employees.id=roles_employee.employee_id
join roles on roles_employee.role_id=roles.id
where role_id>=10 and role_id<=12;

 --11. ������� ����� � ��������� ��������������� QA
select employee_name, role_name, role_id
from employees join roles_employee on employees.id=roles_employee.employee_id
join roles on roles_employee.role_id=roles.id
where role_id>=18 and role_id<=20

 --12. ������� ����� � �������� Junior ������������
select employee_name, monthly_salary
from employees join employee_salary on employees.id=employee_salary.employee_id
join salary on employee_salary.salary_id=salary.id
join roles_employee on roles_employee.employee_id=employees.id
join roles on roles_employee.role_id=roles.id
where role_name like 'Junior%';

 --13. ������� ����� � �������� Middle ������������
select employee_name, monthly_salary
from employees join employee_salary on employees.id=employee_salary.employee_id
join salary on employee_salary.salary_id=salary.id
join roles_employee on roles_employee.employee_id=employees.id
join roles on roles_employee.role_id=roles.id
where role_name like 'Middle%';

 --14. ������� ����� � �������� Senior ������������
select employee_name, monthly_salary
from employees join employee_salary on employees.id=employee_salary.employee_id
join salary on employee_salary.salary_id=salary.id
join roles_employee on roles_employee.employee_id=employees.id
join roles on roles_employee.role_id=roles.id
where role_name like 'Senior%';

 --15. ������� �������� Java �������������
select monthly_salary from roles join roles_employee on roles.id=roles_employee.role_id
join employee_salary on employee_salary.id=roles_employee.employee_id
join salary on employee_salary.salary_id=salary.id
where role_name like '%Java %';

 --16. ������� �������� Python �������������
select monthly_salary from roles join roles_employee on roles.id=roles_employee.role_id
join employee_salary on employee_salary.id=roles_employee.employee_id
join salary on employee_salary.salary_id=salary.id
where role_name like '%Python%';

 --17. ������� ����� � �������� Junior Python �������������
select employee_name, monthly_salary
from employees join employee_salary on employees.id=employee_salary.employee_id
join salary on employee_salary.salary_id=salary.id
join roles_employee on roles_employee.employee_id=employees.id
join roles on roles_employee.role_id=roles.id
where role_name like 'Junior Python%';

 --18. ������� ����� � �������� Middle JS �������������
select employee_name, monthly_salary
from employees join employee_salary on employees.id=employee_salary.employee_id
join salary on employee_salary.salary_id=salary.id
join roles_employee on roles_employee.employee_id=employees.id
join roles on roles_employee.role_id=roles.id
where role_name like 'Middle JavaScript%';

 --19. ������� ����� � �������� Senior Java �������������
select employee_name, monthly_salary, role_name
from employees join employee_salary on employees.id=employee_salary.employee_id
join salary on employee_salary.salary_id=salary.id
join roles_employee on roles_employee.employee_id=employees.id
join roles on roles_employee.role_id=roles.id
where role_name like 'Senior Java %';
--��� ����������� � ����� ����������

 --20. ������� �������� Junior QA ���������
select monthly_salary from roles join roles_employee on roles.id=roles_employee.role_id
join employee_salary on employee_salary.id=roles_employee.employee_id
join salary on employee_salary.salary_id=salary.id
where role_name like 'Junior%QA%';

 --21. ������� ������� �������� ���� Junior ������������
select avg (monthly_salary)
from roles join roles_employee on roles.id=roles_employee.role_id
join employee_salary on employee_salary.id=roles_employee.employee_id
join salary on employee_salary.salary_id=salary.id
where role_name like 'Junior%' ;

 --22. ������� ����� ������� JS �������������
select sum (monthly_salary)
from roles join roles_employee on roles.id=roles_employee.role_id
join employee_salary on employee_salary.id=roles_employee.employee_id
join salary on employee_salary.salary_id=salary.id
where role_name like '%JavaScript%' ;

 --23. ������� ����������� �� QA ���������
select min (monthly_salary)
from roles join roles_employee on roles.id=roles_employee.role_id
join employee_salary on employee_salary.id=roles_employee.employee_id
join salary on employee_salary.salary_id=salary.id
where role_name like '%QA%' ;

 --24. ������� ������������ �� QA ���������
select max (monthly_salary)
from roles join roles_employee on roles.id=roles_employee.role_id
join employee_salary on employee_salary.id=roles_employee.employee_id
join salary on employee_salary.salary_id=salary.id
where role_name like '%QA%' ;

 --25. ������� ���������� QA ���������
select count (employee_name)
from employees join roles_employee on employees.id=roles_employee.employee_id
join roles on roles_employee.role_id=roles.id
where role_name like '%QA%' ;

 --26. ������� ���������� Middle ������������.
select count (employee_name)
from employees join roles_employee on employees.id=roles_employee.employee_id
join roles on roles_employee.role_id=roles.id
where role_name like 'Middle%' ;

 --27. ������� ���������� �������������
select count (employee_name)
from employees join roles_employee on employees.id=roles_employee.employee_id
join roles on roles_employee.role_id=roles.id
where role_name like '%developer' ;

select role_name, employee_name
from employees join roles_employee on employees.id=roles_employee.employee_id
join roles on roles_employee.role_id=roles.id
where role_name like '%developer' ;

 --28. ������� ���� (�����) �������� �������������.
select sum (monthly_salary)
from roles join roles_employee on roles.id=roles_employee.role_id
join employee_salary on employee_salary.id=roles_employee.employee_id
join salary on employee_salary.salary_id=salary.id
where role_name like '%developer' ;

 --29. ������� �����, ��������� � �� ���� ������������ �� �����������
select employee_name, role_name, monthly_salary from employees 
join employee_salary on employees.id=employee_salary.employee_id
join salary on employee_salary.salary_id=salary.id
join roles_employee on roles_employee.employee_id=employees.id
join roles on roles_employee.role_id=roles.id
order by salary.monthly_salary asc;
-- ����� ������ ������ �������� ������� (��� �������) + ����� �� ������ asc (�� ��������� �� ����������� �� ���������)

 --30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select employee_name, role_name, monthly_salary from employees 
join employee_salary on employees.id=employee_salary.employee_id
join salary on employee_salary.salary_id=salary.id
join roles_employee on roles_employee.employee_id=employees.id
join roles on roles_employee.role_id=roles.id
where monthly_salary between 1700 and 2300
order by salary;

 --31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select employee_name, role_name, monthly_salary from employees 
join employee_salary on employees.id=employee_salary.employee_id
join salary on employee_salary.salary_id=salary.id
join roles_employee on roles_employee.employee_id=employees.id
join roles on roles_employee.role_id=roles.id
where monthly_salary < 2300
order by salary;

 --32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select employee_name, role_name, monthly_salary from employees 
join employee_salary on employees.id=employee_salary.employee_id
join salary on employee_salary.salary_id=salary.id
join roles_employee on roles_employee.employee_id=employees.id
join roles on roles_employee.role_id=roles.id
where monthly_salary = 1100 or monthly_salary=1500 or monthly_salary=2000
order by salary;
