# RestaurantData-Analysis-SQL

Project Overview: Restaurant Operation Analysis
### Situation
As a data analyst at World's Cafe, a renowned restaurant known for its diverse menu offerings, your task is to conduct a comprehensive evaluation of customer preferences and menu performance at the start of the year. The primary objectives are to determine which menu items are performing well and which are not, identify top customers and their preferences, and analyze the price points of the most loved dishes. This analysis will aid in making strategic decisions regarding menu adjustments, promotions, and customer engagement strategies.

### Data Structure
The analysis will be based on two primary tables: orders and menu.

### Orders Table:

order_id: Unique identifier for each order.
customer_id: Unique identifier for each customer.
menu_item_id: Unique identifier for each menu item ordered.
quantity: Number of units of the menu item ordered.
order_date: Date of the order.
Menu Table:

menu_item_id: Unique identifier for each menu item.
item_name: Name of the menu item.
category: Category of the menu item (e.g., appetizer, main course, dessert).
price: Price of the menu item.
Objectives
Identify Top-Performing Menu Items:

Determine which menu items have the highest sales and generate the most revenue.
Focus on the most ordered food items, such as the popular hamburger.
Identify Underperforming Menu Items:

Identify menu items with low sales.
Analyze potential reasons for underperformance, such as high price or low demand.
Customer Preferences:

Identify the top customers based on total spending.
Determine the most frequently ordered menu items by these top customers, focusing on popular categories like Italian cuisine.
Price Analysis of Popular Dishes:

Evaluate the price distribution of the most loved dishes.
Highlight that American categories are the most affordable, and identify the pricing trends of popular items.

### Key Insights
Italian Menus Are Most Loved: The analysis should emphasize that Italian dishes are particularly popular among customers. Items like pasta, pizza, and risotto are frequently ordered and generate substantial revenue.
American Categories Are Most Affordable: American dishes, while popular, tend to be more affordable. This includes items such as burgers, fries, and sandwiches. The affordability of these items may contribute to their high sales volume.
Hamburger Is the Most Ordered Food: Among all menu items, the hamburger stands out as the most ordered food at World's Cafe. Its popularity could be attributed to its affordability, taste, and wide appeal. And we can stop the production of Chiken Tacos in mexican menu.

### Conclusion
By leveraging SQL to analyze the orders and menu tables, we can gain valuable insights into the performance of menu items and customer preferences at World's Cafe. The key findings that Italian menus are the most loved, American categories are the most affordable, and the hamburger is the most ordered food will inform strategic decisions to enhance customer satisfaction and drive sales growth. This data-driven approach will help World's Cafe refine its menu offerings, optimize pricing strategies, and tailor marketing efforts to better meet the needs and preferences of its customers.
