/* List all customers/consumers */
SELECT Customers.FirstName, Customers.LastName from Customers;

/* List all purchases by a customer */
SELECT c.FirstName, p.purchase_desc, p.purchase_date from Purchases as p inner join Customers as c on c.id = p.cust_id where c.FirstName = 'Roopesh';
