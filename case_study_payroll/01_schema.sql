-- Employee table
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    department_id INT
);

-- Department table
CREATE TABLE departments (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);

-- Salary table
CREATE TABLE salaries (
    employee_id INT,
    base_salary INT,
    bonus INT,
    FOREIGN KEY (employee_id) REFERENCES employees(id)
);

-- Audit table
CREATE TABLE employee_audit (
    audit_id INT IDENTITY(1,1),
    employee_id INT,
    old_salary INT,
    new_salary INT,
    action_type VARCHAR(10),
    action_time DATETIME DEFAULT GETDATE()
);
