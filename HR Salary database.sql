 CREATE DATABASE HRSalaryLab;
 USE HRSalaryLab;
 
CREATE TABLE departments (
   dept_id INT  AUTO_INCREMENT PRIMARY KEY,
   dept_name VARCHAR(50) NOT NULL UNIQUE,
   location VARCHAR (50) NOT NULL
   );
 CREATE TABLE employees (
   emp_id INT auto_increment PRIMARY KEY,
   emp_name VARCHAR(80) NOT NULL,
   dept_id INT NOT NULL,
   job_title VARCHAR(60) NOT NULL,
   employement_type VARCHAR(15) NOT NULL,
   hire_date DATE NOT NULL,
   salary DECIMAL(10,2) NOT NULL,
   performance_rating DECIMAL(2,1) NULL,
   status VARCHAR(15) NOT NULL DEFAULT'ACTICE',
   foreign key (dept_id) references departments(dept_id)
   );
CREATE TABLE salary_payments (
   payment_id INT auto_increment PRIMARY KEY,
   emp_id INT NOT NULL,
   pay_month DATE NOT NULL,
   basic_pay DECIMAL(10,2) NOT NULL,
   bonus DECIMAL(10,2) NOT NULL default 0,
   deductions DECIMAL(10,2) NOT NULL default 0,
   FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);
CREATE TABLE leave_record (
   leave_id INT auto_increment PRIMARY KEY,
   emp_id INT NOT NULL,
   leave_type VARCHAR(15) NOT NULL,
   start_date DATE NOT NULL,
   days INT NOT NULL,
   FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);
INSERT INTO departments (dept_name, location) VALUES
('HUMAN RESOURCES','BENGALURU'),
('INFO TECH','BENGALURU'),
('MARKETIING','DELHI'),
('OPERATIONS','CHENNAI'),
('LEGAL','MUMBAI');
INSERT INTO employees (emp_name, dept_id, job_title, employement_type,hire_date, salary, performance_rating, status) VALUES
('Aarav Sharma', 1, 'Software Engineer', 'Full-Time', '2021-03-15', 65000, 4.5, 'Active'),
('Priya Verma', 2, 'HR Executive', 'Full-Time', '2020-07-10', 48000, 4.2, 'Active'),
('Rohan Das', 3, 'Data Analyst', 'Full-Time', '2022-01-20', 58000, 4.0, 'Active'),
('Neha Kapoor', 4, 'Marketing Specialist', 'Full-Time', '2019-09-12', 55000, 4.3, 'Active'),
('Vikram Singh', 5, 'Accountant', 'Full-Time', '2018-05-18', 52000, 3.9, 'Active'),
('Ananya Roy', 1, 'Backend Developer', 'Full-Time', '2023-02-14', 70000, 4.6, 'Active'),
('Rahul Mehta', 6, 'Sales Executive', 'Full-Time', '2021-08-01', 50000, 4.1, 'Active'),
('Sneha Gupta', 2, 'Recruiter', 'Contract', '2022-06-21', 42000, 3.8, 'Active'),
('Karan Patel', 1, 'Frontend Developer', 'Full-Time', '2020-11-05', 62000, 4.4, 'Active'),
('Meera Iyer', 3, 'Business Analyst', 'Full-Time', '2019-12-01', 60000, 4.5, 'Active'),
('Aditya Nair', 4, 'Content Strategist', 'Full-Time', '2021-04-22', 47000, 4.0, 'Active'),
('Pooja Reddy', 5, 'Finance Analyst', 'Full-Time', '2020-10-18', 59000, 4.3, 'Active'),
('Arjun Kumar', 6, 'Sales Manager', 'Full-Time', '2018-07-11', 85000, 4.7, 'Active'),
('Divya Joshi', 1, 'DevOps Engineer', 'Full-Time', '2022-08-09', 76000, 4.4, 'Active'),
('Manish Yadav', 3, 'BI Analyst', 'Contract', '2023-03-17', 54000, 3.9, 'Active'),
('Kavya Menon', 2, 'HR Manager', 'Full-Time', '2017-06-14', 82000, 4.8, 'Active'),
('Siddharth Jain', 4, 'SEO Specialist', 'Part-Time', '2022-09-28', 35000, 3.7, 'Active'),
('Ishita Bose', 5, 'Senior Accountant', 'Full-Time', '2019-01-07', 68000, 4.5, 'Active'),
('Harsh Agarwal', 1, 'System Administrator', 'Full-Time', '2021-12-12', 61000, 4.1, 'Active'),
('Nikita Shah', 6, 'Sales Associate', 'Part-Time', '2023-05-03', 30000, 3.8, 'Active'),
('Amit Choudhary', 3, 'Data Scientist', 'Full-Time', '2020-02-24', 90000, 4.8, 'Active'),
('Ritika Sen', 4, 'Brand Manager', 'Full-Time', '2018-08-16', 87000, 4.6, 'Active'),
('Yash Malhotra', 1, 'QA Engineer', 'Full-Time', '2022-07-19', 57000, 4.0, 'Active'),
('Tanvi Mishra', 2, 'Training Coordinator', 'Contract', '2021-01-25', 45000, 3.9, 'Active'),
('Abhishek Rao', 5, 'Financial Controller', 'Full-Time', '2017-11-13', 98000, 4.9, 'Active'),
('Rhea Banerjee', 6, 'Regional Sales Lead', 'Full-Time', '2019-04-29', 92000, 4.7, 'Active'),
('Gaurav Sethi', 1, 'Mobile Developer', 'Full-Time', '2023-01-30', 68000, 4.2, 'Active'),
('Shreya Kulkarni', 4, 'Digital Marketer', 'Full-Time', '2020-06-06', 53000, 4.1, 'Active'),
('Deepak Arora', 3, 'Reporting Analyst', 'Full-Time', '2022-04-18', 52000, 3.8, 'Active'),
('Aisha Khan', 2, 'Talent Acquisition Specialist', 'Full-Time', '2021-09-14', 56000, 4.4, 'Active'),
('Naveen Pillai', 1, 'Cloud Engineer', 'Full-Time', '2019-03-09', 81000, 4.6, 'Active'),
('Komal Bhatia', 5, 'Accounts Executive', 'Part-Time', '2023-07-20', 28000, 3.6, 'Active'),
('Varun Tiwari', 6, 'Business Development Executive', 'Full-Time', '2022-02-02', 51000, 4.0, 'Active'),
('Sanya Oberoi', 4, 'PR Executive', 'Full-Time', '2020-12-15', 49000, 4.1, 'Active'),
('Mohit Saxena', 1, 'Software Architect', 'Full-Time', '2016-10-10', 120000, 4.9, 'Active'),
('Payal Dutta', 3, 'Research Analyst', 'Contract', '2023-04-11', 46000, 3.7, 'Active'),
('Rajat Khanna', 6, 'Key Account Manager', 'Full-Time', '2018-02-22', 95000, 4.6, 'Active'),
('Nandini Rao', 2, 'Employee Relations Officer', 'Full-Time', '2021-05-26', 52000, 4.2, 'Active'),
('Akash Verma', 1, 'UI/UX Designer', 'Full-Time', '2022-11-08', 63000, 4.3, 'Active'),
('Simran Kaur', 4, 'Social Media Manager', 'Full-Time', '2019-08-30', 61000, 4.4, 'Active'),
('Dev Sharma', 5, 'Payroll Specialist', 'Full-Time', '2020-03-13', 55000, 4.0, 'Active'),
('Anjali Singh', 3, 'Junior Data Analyst', 'Part-Time', '2023-06-05', 32000, 3.5, 'Active'),
('Rohit Bansal', 1, 'Technical Lead', 'Full-Time', '2017-09-21', 110000, 4.8, 'Active'),
('Pallavi Nanda', 2, 'HR Business Partner', 'Full-Time', '2018-12-19', 88000, 4.7, 'Active'),
('Kushal Desai', 6, 'Sales Consultant', 'Contract', '2022-10-27', 47000, 3.9, 'Active'),
('Bhavna Arora', 4, 'Marketing Analyst', 'Full-Time', '2021-07-07', 54000, 4.1, 'Active'),
('Tarun Gupta', 5, 'Auditor', 'Full-Time', '2019-11-25', 73000, 4.4, 'Active'),
('Mitali Roy', 3, 'Machine Learning Engineer', 'Full-Time', '2022-12-01', 88000, 4.7, 'Active'),
('Saurabh Jain', 1, 'Database Administrator', 'Full-Time', '2020-01-16', 79000, 4.5, 'Active'),
('Krishna Patel', 6, 'Territory Sales Executive', 'Full-Time', '2023-08-14', 45000, 3.8, 'not_Active');
UPDATE employees SET status WHERE not_active

SELECT COUNT(*) AS total_employees FROM employees;

SELECT COUNT(*) AS active_employees FROM employees WHERE status = 'Active';

SELECT COUNT(*)                  AS all_employees,
	   COUNT(performance_rating) as employee_with_a_rating
FROM employees;

SELECT COUNT(DISTINCT job_title) AS different_job_titles,
       COUNT(DISTINCT dept_id)   AS department_with_staff
FROM employees;

