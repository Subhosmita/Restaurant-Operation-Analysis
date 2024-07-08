
-- View the order_details table. What is the date range of the table?

SELECT * FROM order_details;
SELECT min(order_date) as start_date , MAX(order_date) as end_date FROM order_details

-- How many orders were made within this date range? How many items were ordered within this date range?

SELECT COUNT( DISTINCT order_id) as Total_orders FROM order_details ;
SELECT COUNT (item_id) as Total_items FROM order_details ;

-- Which orders had the most number of items?

SELECT TOP 5 order_id , COUNT (item_id) as Total_items FROM order_details
GROUP BY order_id
ORDER BY Total_items DESC;

-- How many orders had more than 12 items?


SELECT  COUNT(*) as itemNum FROM (
SELECT  order_id , COUNT(item_id) as Total_item FROM order_details
GROUP BY order_id
HAVING COUNT(item_id) > 12) as item_num


