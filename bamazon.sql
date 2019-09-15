/* if dababase called bamazon exists do not make new one */
DROP DATABASE IF EXISTS bamazon;

/*  no databse called bamazon exists create new one */
 CREATE DATABASE bamazon;

/* use the bamazon database */
 USE bamazon;

 /* create a TABLE called products */
CREATE TABLE products (
/* create a column called item_id which auto increment and cannot be null */
    item_id INT NOT NULL AUTO_INCREMENT,
/* create a column called product_name allowing a maximum character of 50 and cannot be null*/
    product_name VARCHAR(50) NOT NULL,
/* create a column called department_name allowing a maximum character of 50 and cannot be null*/
    deparment_name VARCHAR(50) NOT NULL,
/* create a column called price which allows currency input/decimal with maximum digits of 10 and 2 places of decimal and cannot be null*/
    price DECIMAL(10,2) NOT NULL,
/* create a column called stock_quantity with a maximum integer of 200 and cannot be null */
    stock_quantity INT(200) NOT NULL,
/* create a primary key call item_id to identify the row of product in the id table*/
    PRIMARY KEY (item_id)
);

/* insert the products into the table in their respective column */
    INSERT INTO products ( product_name, deparment_name, price, stock_quantity)
    VALUES("alternator", "automotive", 150.99, 100);

    INSERT INTO products ( product_name, deparment_name, price, stock_quantity)
    VALUES("starter", "automotive", 115.99, 50); 
    
    INSERT INTO products ( product_name, deparment_name, price, stock_quantity)
    VALUES("Tai Chi Sword", "sports", 250.99, 20);

    INSERT INTO products ( product_name, deparment_name, price, stock_quantity)
    VALUES("punching bag", "sports", 85.99, 10);

    INSERT INTO products ( product_name, deparment_name, price, stock_quantity)
    VALUES("boxing gloves", "gloves", 74.99, 30);

    INSERT INTO products ( product_name, deparment_name, price, stock_quantity)
    VALUES("mouth guard", "sports", 30.99, 10);

    INSERT INTO products ( product_name, deparment_name, price, stock_quantity)
    VALUES("bamboo planks", "flooring", 150.99, 200);

    INSERT INTO products ( product_name, deparment_name, price, stock_quantity)
    VALUES("under layment", "flooring", 150.99, 200);

    INSERT INTO products ( product_name, deparment_name, price, stock_quantity)
    VALUES("baby formula", "food", 23.55, 15);

    INSERT INTO products ( product_name, deparment_name, price, stock_quantity)
    VALUES("Top Ramen", "food", 4.59, 45);
