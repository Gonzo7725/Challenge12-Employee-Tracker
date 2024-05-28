DROP DATABASE IF EXISTS employeetracker_db;
CREATE DATABASE employeetracker_db;

CREATE TABLE department(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name varchar(30) INT NOT NULL
);

CREATE TABLE role(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title varchar(30) NOT NULL,
    salary DECIMAL(10,2),
    department_id INT
    FOREIGN KEY(department_id)
    REFERENCES department(id)
    ON DELETE SET NULL
);

CREATE TABLE employee(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name varchar(30) NOT NULL,
    last_name varchar(30) NOT NULL,

    role_id INT
    FOREIGN KEY(role_id)
    REFERENCES role(id)
    ON DELETE SET NULL

    manager_id INT
    FOREIGN KEY(manager_id)
    REFERENCES employee(id)
    ON DELETE SET NULL
);