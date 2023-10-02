-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2023 at 09:34 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SELECT E.department AS department_name,AVG(E.salary),max_salary AS highest_salary,
    E.id AS employee_id_with_highest_salary
FROM (SELECT department,
        MAX(salary) AS max_salary
    FROM
        employees
    GROUP BY
        department
) AS max_salaries
JOIN employees AS E ON
    max_salaries.department = E.department
    AND max_salaries.max_salary = E.salary;