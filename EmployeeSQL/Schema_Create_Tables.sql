ALTER DATABASE "PH_Employee_db" SET datestyle TO 'ISO, MDY';

CREATE TABLE Departments (
	dept_no VARCHAR NOT NULL,
	dept_name VARCHAR NOT NULL,
	CONSTRAINT PK_Departments PRIMARY KEY (dept_no)
);

CREATE TABLE Employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	gender VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	CONSTRAINT PK_Employees PRIMARY KEY (emp_no)
);

CREATE TABLE Dept_Manager (
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	CONSTRAINT PK_Dept_Manager PRIMARY KEY (dept_no, emp_no)
);

CREATE TABLE Salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	CONSTRAINT PK_Salaries PRIMARY KEY (emp_no)
);

CREATE TABLE Dept_Emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
	CONSTRAINT PK_Dept_Emp PRIMARY KEY (dept_no, emp_no)
);

CREATE TABLE Titles (
	title_id VARCHAR NOT NULL,
	title VARCHAR NOT NULL,
	CONSTRAINT PK_Titles PRIMARY KEY (title_id)
);

ALTER TABLE Dept_Manager ADD CONSTRAINT FK_Dept_Manager_dept_no
FOREIGN KEY(dept_no) REFERENCES Departments (dept_no)

ALTER TABLE Dept_Manager ADD CONSTRAINT FK_Dept_Manager_emp_no
FOREIGN KEY(emp_no) REFERENCES Employees (emp_no)

ALTER TABLE Salaries ADD CONSTRAINT FK_Salaries_emp_no
FOREIGN KEY(emp_no) REFERENCES Employees (emp_no)

ALTER TABLE Dept_Emp ADD CONSTRAINT FK_Dept_Emp_dept_no
FOREIGN KEY(dept_no) REFERENCES Departments (dept_no)

ALTER TABLE Dept_Emp ADD CONSTRAINT FK_Dept_Emp_emp_no
FOREIGN KEY(emp_no) REFERENCES Employees (emp_no)

SELECT * FROM titles







