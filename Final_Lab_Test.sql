--List all customers handled by agent ID='A001'

SELECT cust_code, cust_name, cust_city, working_area, cust_country, phone_no
FROM customer
WHERE agent_code = 'A001';


--List the total outstanding Amount for each city
SELECT cust_city, SUM(outstanding_amt) AS total_outstanding
FROM customer
GROUP BY cust_city;


--despatch table row insert
-- Inserting multiple rows into the despatch table
INSERT INTO despatch (des_num, des_date, des_amount, ord_num, ord_date, ord_amount, agent_code)
VALUES
('D001', '2008-01-15', 1000.00, 200100, '2008-01-08', 1000.00, 'A003'),
('D002', '2008-04-20', 3000.00, 200110, '2008-04-15', 3000.00, 'A010'),
('D003', '2008-09-01', 4500.00, 200107, '2008-08-30', 4500.00, 'A010'),
('D004', '2008-06-01', 2000.00, 200112, '2008-05-30', 2000.00, 'A007'),
('D005', '2008-07-16', 4000.00, 200113, '2008-06-10', 4000.00, 'A002');



--find average order amount from all orders
SELECT AVG(ord_amount) AS average_order_amount
FROM orders;

