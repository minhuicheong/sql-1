-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2023 at 09:34 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

CREATE INDEX idx_department_salary ON employees (department, salary);

--This index should help speed up the execution of the given query because it allows the database engine to quickly locate rows that satisfy both the department and salary conditions, making the query more efficient.

