use practice;

drop table sales_orders;

CREATE TABLE sales_orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    order_date DATE,
    delivery_date DATE,
    amount DECIMAL(10,2),
    city VARCHAR(50),
    product_category VARCHAR(50),
    delivery_status VARCHAR(20),         -- e.g., Delivered, Pending, Cancelled (nullable)
    discount DECIMAL(5,2),               -- Discount in percentage (nullable)
    feedback_rating INT                  -- Customer feedback rating from 1–5 (nullable)
);

INSERT INTO sales_orders (order_id, customer_name, order_date, delivery_date, amount, city, product_category, delivery_status, discount, feedback_rating) VALUES
(11,  'Ramesh',  '2024-06-06', NULL,         8200.00, 'Kolkata',   'Appliances',  NULL,       NULL,   NULL),
(16,  'Sunita',  '2024-06-06', '2024-06-12', 1000.00, 'Mumbai',    'Books',       'Delivered', 2.00,   4),
(17,  'Anil',    '2024-06-07', '2024-06-09', 5600.00, 'Delhi',     'Electronics', NULL,       NULL,   2),
(18,  'Pooja',   '2024-06-08', NULL,         750.00,  'Pune',      'Stationery',  'Pending',   NULL,   NULL),
(19,  'Kiran',   '2024-06-09', '2024-06-14', 2200.00, 'Chennai',   'Books',       'Delivered', 15.00,  NULL),
(20, 'Suresh',  '2024-06-10', '2024-06-15', 6700.00, 'Mumbai',    'Furniture',   'Delivered', 8.00,   5);


Select * from sales_orders;

-------- questions ----------------
### 🔰 **Beginner Level Questions**



-- 1. Select all columns from the `sales_orders` table.
select * from sales_orders;

-- 2. Get all orders placed by the customer `'Amit'`.
select * from sales_orders where customer_name='Amit';

-- 3. Show orders where the `amount` is greater than 3000.
select * from sales_orders where amount >3000;

-- 4. List all unique cities from the table.
select distinct city from sales_orders;

-- 5. Find all orders placed on `'2024-06-06'`.
select * from sales_orders where order_date ='2024-06-06';

-- 6. Sort all orders by `amount` in descending order.
select * from sales_orders order by amount DESC;

-- 7. Show orders where `discount` is **not NULL**.
select * from sales_orders WHERE discount is NOT NULL;

-- 8. Get all orders where `delivery_status` is `'Delivered'`.
select * from sales_orders WHERE delivery_status ='Delivered';

---

-- ### ⚙️ **Intermediate Level Questions**

-- These involve filtering, aggregation, grouping, and NULL handling.

-- 9. Count the number of orders per city.
select city, count(city) from sales_orders GROUP BY city;

-- 10. Find the total amount of sales for each `product_category`.
select product_category , sum(amount) from sales_orders GROUP BY product_category;

-- 11. Show the average feedback rating by `product_category`, excluding NULLs.
select product_category, AVG(feedback_rating) from sales_orders 
where feedback_rating is not NULL 
GROUP BY product_category;

-- 12. Get the top 5 highest-value orders.

select * from sales_orders order by amount desc limit 5;

-- 13. Show orders where the delivery took **more than 5 days**.
select order_id, order_date, delivery_date, DATEDIFF(delivery_date, order_date) as df from sales_orders
WHERE DATEDIFF(delivery_date, order_date) > 4; 

-- 14. Replace NULL `discount` values with 0 using `COALESCE`.
select customer_name, COALESCE(discount, 0.0) from sales_orders;

-- 15. List customers who got a discount and also gave feedback (i.e., both columns not NULL).
select customer_name, discount, feedback_rating from sales_orders where discount is NOT NULL and feedback_rating is not NULL;

-- 16. Show the number of pending deliveries (`delivery_status = 'Pending'`) per city.
select city, count(delivery_status) from sales_orders where delivery_status='Pending' GROUP BY city;

-- 17. List the earliest and latest order dates for each product category.
select product_category, min(order_date) mindate, max(order_date) maxdate from sales_orders GROUP BY product_category;

-- 18. Find the total and average order amount for each `delivery_status`.

select delivery_status, sum(amount) totalamout, AVG(amount) avgamnt from sales_orders
WHERE delivery_status is not null GROUP BY delivery_status;

---

### 🚀 **Advanced Level Questions**

------------These involve subqueries, window functions, date logic, and conditional aggregation. ---------------

-- 19. Find customers who placed more than one order (assume duplicates later).
select customer_name, count(customer_name) from sales_orders
GROUP BY customer_name HAVING count(customer_name)>1;

-- 20. Show cumulative total sales per order date.
select order_date, COUNT(order_date) sales from sales_orders
GROUP BY order_date;

-- 21. List customers whose feedback is in the **top 25%** (quartile logic).



22. Calculate average delivery time (in days) for each city.
23. Find the percentage of orders that were delivered within 3 days.
24. Show rank of each order (by amount) using `RANK()` window function.
25. List orders that had the **maximum discount** within each product category.
26. Count how many orders were placed in the **same month as today**.
27. Identify product categories with more than **50% of orders missing feedback**.
28. Find all customers who never gave feedback but received a discount.



