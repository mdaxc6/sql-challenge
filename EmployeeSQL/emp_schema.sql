-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/

CREATE TABLE "employees" (
    "emp_no" varchar(10)   NOT NULL,
    "emp_title_id" varchar(5)   NOT NULL,
    "birth_date" varchar(10)   NOT NULL,
    "first_name" varchar(30)   NOT NULL,
    "last_name" varchar(30)   NOT NULL,
    "sex" varchar(1)   NOT NULL,
    "hire_date" varchar(10)   NOT NULL,
    PRIMARY KEY ("emp_no")
);

CREATE TABLE "departments" (
    "dept_no" varchar(5)   NOT NULL,
    "dept_name" varchar(20)   NOT NULL,
	PRIMARY KEY ("dept_no")
);

CREATE TABLE "dept_emp" (
    "emp_no" varchar(10)   NOT NULL,
    "dept_no" varchar(5)   NOT NULL,
    PRIMARY KEY ("emp_no","dept_no"),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE "dept_manager" (
    "dept_no" varchar(5)   NOT NULL,
    "emp_no" varchar(10)   NOT NULL,
	PRIMARY KEY ("dept_no","emp_no"),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


CREATE TABLE "salaries" (
    "emp_no" varchar(10) NOT NULL,
    "salary" integer NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)	
);

CREATE TABLE "titles" (
    "title_id" varchar(5)   NOT NULL,
    "title" varchar(25)   NOT NULL,
    PRIMARY KEY ("title_id")
);


-- Adding data via import

SELECT * FROM departments;

SELECT * FROM dept_emp;

SELECT * FROM employees;

SELECT * FROM dept_manager;

SELECT * FROM salaries;

SELECT * FROM titles;