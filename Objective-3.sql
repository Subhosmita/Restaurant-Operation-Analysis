-- Combine the menu_items and order_details tables into a single table

SELECT * FROM order_details as d 
LEFT JOIN menu_items  as m
ON d.item_id = m.menu_item_id

--What were the least and most ordered items? What categories were they in?

SELECT item_name , category , COUNT(order_details_id) as num_purchase 
FROM order_details as d 
LEFT JOIN menu_items  as m
ON d.item_id = m.menu_item_id
GROUP BY item_name , category 
ORDER BY num_purchase DESC ;

-- The most ordered item is Hamburger in American category and the least ordered item is Chiken Tacos in Mexican category.

-- What were the top 5 orders that spent the most money?

SELECT  TOP 5 order_id , SUM(price) as Total_spend FROM order_details as d 
LEFT JOIN menu_items  as m
ON d.item_id = m.menu_item_id
GROUP BY order_id 
Order by Total_spend DESC ;

--View the details of the highest spend order. Which specific items were purchased?

SELECT category , COUNT(item_id) as Total_items ,  SUM(price) as Total_spend FROM order_details as d 
LEFT JOIN menu_items  as m
ON d.item_id = m.menu_item_id
WHERE d.order_id = 440 
GROUP BY category


--BONUS: View the details of the top 5 highest spend orders

SELECT  order_id , category , COUNT(item_id) as Total_items ,  SUM(price) as Total_spend FROM order_details as d 
LEFT JOIN menu_items  as m
ON d.item_id = m.menu_item_id
WHERE d.order_id in (440,2075,1957,330,2675)
GROUP BY order_id , category


-- The italian food must be included into the Menu.


-- how much was the Most expensive order in the dataset 
select MAX(price) from menu_items