drop table if exists department cascade; 
create table department (
	dept_no varchar not null, 
	dept_name varchar not null,
	primary key (dept_no)
); 

drop table if exists titles cascade;
create table titles (
	title_id varchar not null,
	title varchar not null,
	primary key (title_id)
);

drop table if exists employee cascade; 
create table employee (
	emp_no int not null primary key,
	emp_title_id varchar not null, 
	birth_date varchar not null,
	first_name varchar not null,
	last_name varchar not null,
	sex varchar not null,
	hire_date varchar not null, 
	foreign key (emp_title_id) references titles (title_id)
);

drop table if exists dept_emp cascade; 
create table dept_emp (
	emp_no int, 
	dept_no varchar,
	primary key (emp_no, dept_no),
	foreign key (emp_no) references employee (emp_no),
	foreign key (dept_no) references department (dept_no)
); 

drop table if exists dept_manager cascade;
create table dept_manager(
	dept_no varchar not null, 
	emp_no int not null, 
	foreign key (dept_no) references department(dept_no),
	foreign key (emp_no) references employee (emp_no)
);

drop table if exists salaries cascade;
create table salaries(
	emp_no int not null, 
	salary int not null, 
	foreign key (emp_no) references employee (emp_no)
);

select * from department

select * from titles

select * from employee

select * from dept_emp

select * from dept_manager

select * from salaries