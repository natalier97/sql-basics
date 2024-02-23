-- Schema
DROP TABLE IF EXISTS students;
CREATE TABLE students (
  id             PRIMARY KEY,
  first_name   varchar(255) NOT NULL,
  last_name    varchar(255) NOT NULL,
  birthdate    date NOT NULL,
  address_id   integer
);

CREATE TABLE addresses (
  id  serial PRIMARY KEY,
  line_1  VARCHAR(255) NOT NULL,
  city  varchar(255) NOT NULL,
  state varchar(255) NOT NULL,
  zipcode int NOT NULL
);

CREATE TABLE classes (
  id serial PRIMARY KEY,
  name varchar(255) NOT NULL,
  credits int NOT NULL
);

CREATE TABLE enrollments (
  id  serial PRIMARY KEY,
  student_id  int references students(id) NOT NULL,
  class_id  int references classes(id) NOT NULL,
  grade   VARCHAR(1)
);

