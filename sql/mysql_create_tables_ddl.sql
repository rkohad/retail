/* AWS RDS has sys database instead of 'master' */
use sys;

/* Create a fresh copy of database */

DROP DATABASE retail;
CREATE DATABASE retail;
use retail;

CREATE TABLE Customers
(
id int NOT NULL AUTO_INCREMENT,
FirstName varchar(255),
LastName varchar(255),
Address varchar(255),
Phone varchar(32),
Mobile varchar(32),
Age varchar(8),
Email varchar(255),
PRIMARY KEY(id)
);

CREATE TABLE Purchases
(
id int NOT NULL AUTO_INCREMENT,
cust_id int,
purchase_desc varchar(255),
purchase_date varchar(255),
retailer varchar(255),
total varchar(32),
PRIMARY KEY(id),
FOREIGN KEY(cust_id) REFERENCES Customers(id)
);

CREATE TABLE Purchase_Items
(
id int NOT NULL AUTO_INCREMENT,
purchase_id int,
item varchar(32),
quantity varchar(32),
price_per_unit varchar(32),
subtotal varchar(32),
FOREIGN KEY(purchase_id) REFERENCES Purchases(id)
);