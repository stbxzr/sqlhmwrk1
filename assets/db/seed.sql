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
VALUES ("marketing"),
("customer service"),
("accounting"),
("sales");

INSERT INTO roles (title, salary, department_id)
VALUES ("product development", 70000, 1),
("call associate", 40000, 2),
("accountant", 80000, 3),
("sales lead", 60000, 4);

INSERT INTO employees (first_name, last_name, role_id, manager_id)
VALUES ("julian", "almendarez", 1, NULL),
("bob", "smith", 2, 1),
("noah", "ark", 3, 1),
("brad", "smart", 3, 1);
