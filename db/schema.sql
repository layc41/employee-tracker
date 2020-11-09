drop database if exists employees;
create database employees;

use employees;

create table department (
  id int auto_increment primary key,
  name varchar(30) unique not null
);

create table role (
  id int auto_increment primary key,
  title varchar(30) unique not null,
  salary decimal not null,
  department_id int not null,
  index dep_ind (department_id),
  constraint fk_department foreign key (department_id) references department(id)
);

create table employee (
  id int auto_increment primary key,
  first_name varchar(30) not null,
  last_name varchar(30) not null,
  role_id int not null,
  index role_ind (role_id),
  constraint fk_role foreign key (role_id) references role(id),
  manager_id int,
  index man_ind (manager_id),
  constraint fk_manager foreign key (manager_id) references employee(id)
);
