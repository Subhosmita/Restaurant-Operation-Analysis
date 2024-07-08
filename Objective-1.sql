select * from menu_items;


-- Total no. of items in the table
SELECT COUNT(item_name) as Total_item FROM menu_items;

-- The most and least expensive item on this list

SELECT top 1 item_name as Least_expensiveI_Item , price FROM menu_items 
ORDER BY price ;

SELECT top 1 item_name as Most_expensive_Item , price FROM menu_items 
ORDER BY price desc;

--How many Italian dishes are on the menu? What are the least and most expensive Italian dishes on the menu?

SELECT category,item_name , price FROM menu_items 
WHERE category = 'Italian' ;

SELECT COUNT(category) as Total_num_of_ItalianDishes from menu_items
WHERE category = 'Italian';

SELECT  top 1 item_name as Least_expensive_italianDish , price FROM menu_items 
WHERE category = 'Italian'
ORDER BY price ;

SELECT  top 1 item_name as Most_expensive_italianDish , price FROM menu_items 
WHERE category = 'Italian'
ORDER BY price desc ;

-- How many dishes are in each category? What is the average dish price within each category?

SELECT category, COUNT(menu_item_id) as Total_num_Dishes FROM menu_items
GROUP BY category ;

SELECT category, COUNT(menu_item_id) as Total_num_Dishes , floor(avg(price)) as Average_price FROM menu_items
GROUP BY category ;

 -- By this we can conlclude that the Itallian Dishes are most expensive and the American Dishes are most affordable.