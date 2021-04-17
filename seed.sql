CREATE TABLE department (
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR (30) NULL,
PRIMARY KEY (id)
);

CREATE TABLE role (
id INT NOT NULL AUTO_INCREMENT,
title VARCHAR (30) NULL,
salary DECIMAL(10,2) NULL,
department_id INT NULL,
PRIMARY KEY (id)
);

CREATE TABLE employee (
id INT NOT NULL AUTO_INCREMENT,
first_name VARCHAR (30) NULL,
last_name VARCHAR (30) NULL,
role_id INT NULL,
manager_id INT NULL,
PRIMARY KEY (id)
);

INSERT INTO department (name)
VALUES ("sales");

INSERT INTO role (title, salary)
VALUES ("sales lead", 1000);

INSERT INTO employee (first_name, last_name)
VALUES ("julian", "almendarez");