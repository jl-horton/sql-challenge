-- List the following details of each employee: employee number, last name, first name, sex, and salary.
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employee as e
join salaries as s
	 on s.emp_no = e.emp_no; 
	 
-- List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date
from employee
where hire_date like '%1986';

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
from dept_manager as dm
join department as d
	on dm.dept_no = d.dept_no
join employee as e
	on dm.emp_no = e.emp_no;
	
-- List the department of each employee with the following information: employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employee as e
join dept_emp as de
	on e.emp_no = de.emp_no
join department as d
	on de.dept_no = d.dept_no;

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex
from employee 
	where first_name = 'Hercules' and last_name like 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
select * from department;
-- Sales department is d007
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employee as e
join dept_emp as de
	on e.emp_no = de.emp_no
join department as d
	on de.dept_no = d.dept_no
where d.dept_no = 'd007';

-- List all employees in the Sales & Development departments, including their employee number, last name, first name, and department name. 
select * from department;
-- Sales department is d007 -- Development department is d005
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employee as e
join dept_emp as de
	on e.emp_no = de.emp_no
join department as d
	on de.dept_no = d.dept_no
where d.dept_no = 'd007' or d.dept_no = 'd005';

-- In descending order, list the frequency count of employee last names, i.e. how many employees share each last name. 
select last_name, count(last_name) as "Frequency count"
	from employee
	group by last_name
	order by "Frequency count" desc;
