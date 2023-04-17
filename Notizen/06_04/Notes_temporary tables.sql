USE sakila;

CREATE DATABASE Ironhack;
USE Ironhack;
CREATE TABLE students (
students_id INT PRIMARY KEY,
first_name VARCHAR(55),
last_name VARCHAR(55),
age INT);

INSERT INTO students (students_id, first_name, last_name, age)
VALUES (1, 'Jorge', 'Aguilar', 25);

SELECT * FROM students;

UPDATE students
SET age = 30
WHERE first_name = 'Jorge';

create temporary table bank.loan_and_account
select l.loan_id, l.account_id, a.district_id, l.amount, l.payments, a.frequency
from bank.loan l
join bank.account a
on l.account_id = a.account_id;

select * from bank.loan_and_account;

Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column.  To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.
DROP table students; 


create temporary table bank.loan_and_account
select l.loan_id, l.account_id, a.district_id, l.amount, l.payments, a.frequency
from bank.loan l
join bank.account a
on l.account_id = a.account_id;

SELECT * FROM bank.loan_and_account;

