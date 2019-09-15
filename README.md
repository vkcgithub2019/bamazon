Bamazon app is an Amazon-like storefront built with the MySQL skills learned in class. 
The app will take in orders from customers and deplete stock from the store's inventory. 
First I created a database called bamazon. Then I created a table inside of this database
called products. The product table has columns of item_id (unique id for each product), 
product_name, department_name,price (cost to customer), and stock_quantity (how much of the 
product is available in store). The table is then populated with 10 different products. 

In order to see what is availble for sale, a javascript file called bamazonCustomer.js is 
created. Type node bamazonCustomer.js to run this file in command line. A table containing the inserted items will be displayed for the customer. Then, there are 2 prompts: one is for the customer to select 
the item to buy using the item_id and the other is a prompt for the customer to input the quantity 
to buy. After placing the order, the application will check for availability and will tell the customer 
whether their order has enough quantity. If there is insufficient quantity, the customer will be 
informed by a message about the insufficient quantity and order will be prevented from going through.
If there is sufficient quantity, the order will go through and the cost tallied. The customer is then
informed of the total cost. 

Subsequently, the database will be updated to reflect the depletion of stock. 
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
SCREENSHOTS OF THE OPERATION

1.  Starting inventory