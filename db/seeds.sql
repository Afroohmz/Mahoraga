USE staff_organizer;

CREATE TABLE IF NOT EXISTS department (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL
);


INSERT INTO department (name)
VALUES 
    ('Engineering'),
    ('Human Resources'),
    ('Marketing'),
    ('Sales'),
    ('Finance');

CREATE TABLE IF NOT EXISTS role (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES department(id)
);

INSERT INTO role (title, salary, department_id)
VALUES 
    ('Software Engineer', 70000, 1),
    ('HR Manager', 60000, 2),
    ('Marketing Coordinator', 50000, 3),
    ('Sales Representative', 55000, 4),
    ('Accountant', 65000, 5);


CREATE TABLE IF NOT EXISTS employee (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT,
    manager_id INT,
    FOREIGN KEY (role_id) REFERENCES role(id),
    FOREIGN KEY (manager_id) REFERENCES employee(id)
);


INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES 
    ('Marcin', 'Johnson', 1, NULL),
    ('Gojo', 'Satoru', 2, NULL),
    ('Geko', 'Daniels', 3, 2),
    ('Ryan', 'Garcia', 4, 2),
    ('Eve', 'Hadza', 5, 1);

SELECT * FROM department;
SELECT * FROM role;
SELECT * FROM employee;
