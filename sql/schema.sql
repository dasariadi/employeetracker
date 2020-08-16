DROP DATABASE IF EXISTS employee_db;

CREATE DATABASE employee_db;

USE employee_db;

CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT,
    name varchar(60) NULL,
    PRIMARY KEY (id)
);

CREATE TABLE roles (
    id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(50) NULL,
    salary INT NULL,
    department_id INT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(45) NULL,
    last_name VARCHAR(45) NULL,
    role_id INT NULL,
    manager_id INT NULL,
    PRIMARY KEY (id)
);

select * from employee;
select * from role;
select * from department;

INSERT into department (name)
VALUES ("Sales");
INSERT into department (name)
VALUES ("Engineering");
INSERT into department (name)
VALUES ("Finance");
INSERT into department (name)
VALUES ("Legal");
INSERT into department (name)
VALUES ("Manager");

select * from department;

INSERT into role (title, salary, department_id)
VALUES ("Lead Developer", 45000, 1);
INSERT into role (title, salary, department_id)
VALUES ("Associate Developer", 35000, 1);
INSERT into role (title, salary, department_id)
VALUES ("Consultant", 43000, 2);
INSERT into role (title, salary, department_id)
VALUES ("Prime Minister", 50000, 3);
INSERT into role (title, salary, department_id)
VALUES ("Chief Health Officer", 50000, 4);
INSERT into role (title, salary, department_id)
VALUES ("Diva", 65000, 5);

select * from role;

INSERT into employee (first_name, last_name, role_id)
values ("Joe", "Staller", 3); 
INSERT into employee (first_name, last_name, role_id)
values ("Laith", "Harb", 4);
INSERT into employee (first_name, last_name, role_id)
values ("Dasa", "Kamarwan", 5);
INSERT into employee (first_name, last_name, role_id)
values ("Justin", "Trudeau", 6);
INSERT into employee (first_name, last_name, role_id)
values ("Theresa", "Tam", 7);
INSERT into employee (first_name, last_name, role_id)
values ("Mariah", "Carey", 8);

select * from employee;
