CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR (30) NULL,
    PRIMARY KEY (id)
);

CREATE TABLE roles (
    id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR (30) NULL,
    salary DECIMAL(10,2) NULL,
    department_id INTEGER,
    PRIMARY KEY (id),
    FOREIGN KEY (department_id) REFERENCES department(id)
);

CREATE TABLE employees(
    id INTEGER NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INTEGER,
    manager_id INTEGER,
    
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) REFERENCES roles(id)
    ON UPDATE SET NULL
    ON DELETE SET NULL,
    FOREIGN KEY (manager_id) REFERENCES employees(id)
    ON UPDATE SET NULL
    ON DELETE SET NULL
);

INSERT INTO department (name)
VALUES ("sales");

INSERT INTO roles (title, salary)
VALUES ("sales lead", 1000);

INSERT INTO employees (first_name, last_name)
VALUES ("julian", "almendarez");