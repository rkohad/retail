use retail;

/* Create few customers */
INSERT INTO Customers (FirstName,LastName,Age,Phone,Mobile,Email) VALUES ('Roopesh', 'Kohad','39','','','roopesh.kohad@gmail.com');
select * from Customers;

/* Create few Purchases */
INSERT INTO Purchases (cust_id,purchase_desc,purchase_date,retailer,total) VALUES (1,'Grocery on Sunday 29Oct2017','29Oct2017',"Bigbasket","1000");
SELECT * from Purchases;

/* Create few Purchases_Items */
INSERT INTO Purchase_Items (purchase_id,item,quantity,price_per_unit,subtotal) VALUES (1,"Colgate Total 200gm","2","125","250");
INSERT INTO Purchase_Items (purchase_id,item,quantity,price_per_unit,subtotal) VALUES (1,"Bajaj Almond Hair Oil 200gm","1","115","115");
SELECT * from Purchase_Items;