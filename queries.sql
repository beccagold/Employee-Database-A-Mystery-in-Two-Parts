--1
select employees.emp_no, employees.first_name, employees.last_name, employees.gender, salaries.salary
from employees
join salaries
	on employees.emp_no = salaries.emp_no;

--2
select dept_emp.dept_no, dept_emp.from_date
from dept_emp
where 
from_date >= '1986-01-01' and
from_date <'1987-01-01';	

--3
select departments.dept_no, departments.dept_name, dept_manager.emp_no, dept_manager.from_date, dept_manager.to_date, employees.last_name, employees.last_name
from departments
join dept_manager
	on departments.dept_no = dept_manager.dept_no
join employees
	on dept_manager.emp_no = employees.emp_no;
	
--4
select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
join employees
	on dept_emp.emp_no = employees.emp_no
join departments
	on dept_emp.dept_no = departments.dept_no;
	
--5
select employees.first_name, employees.last_name
from employees
where first_name = 'Hercules' and 
	last_name like 'B%';
	
--6
select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
join dept_emp
	on employees.emp_no = dept_emp.emp_no
join departments
	on dept_emp.dept_no = departments.dept_no
where departments.dept_name = 'Sales';

--7
select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
join dept_emp
	on employees.emp_no = dept_emp.emp_no
join departments
	on dept_emp.dept_no = departments.dept_no
where departments.dept_name = 'Sales' or
	departments.dept_name = 'Development';
	
--8
select count(employees.last_name), employees.last_name
from employees
group by employees.last_name
order by count(employees.last_name) desc;