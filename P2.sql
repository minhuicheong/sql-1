SELECT c.customer_name, o.order_date, AVG(o.total_amount) AS AVG_total_amount
FROM customers AS c INNER JOIN orders AS o
ON c.customer_id = o.customer_id 
WHERE city = 'New York'; 

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

