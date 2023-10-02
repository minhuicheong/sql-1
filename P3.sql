-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2023 at 10:13 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SELECT o.order_id, SUM(s.quantity) AS Total_Quantity_Sold, AVG(s.quantity) AS Average_Quantity_sold, SUM(o.total_amount) AS Total_Sales_Amount, AVG(o.total_amount) AS Average_Total_Amount
FROM sales AS s INNER JOIN orders AS o
ON s.order_id = o.order_id;