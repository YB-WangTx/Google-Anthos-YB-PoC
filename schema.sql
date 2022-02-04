--YSQL
--Schema: retail
Create schema retail;

--Tables to support Microservices
--1. Products: Product Catalog Publishing Microservice
CREATE TABLE retail.products (
	    sku text PRIMARY KEY,
	    title text,
	    description text,
	    price double,
	    imurl text,
	    	brand text,
	    categories set<text>,
		   num_stars int,
	    avg_stars double
           discount
	);

--2. Product Inventory: Inventory Service
	CREATE TABLE retail.inventory (
	    sku text PRIMARY KEY,
           store_num  int,
	    onhand int,
     available_to_promise,
     allocated
     reserved      
     virtual_hold
           ....
	);
  
--2. Transactions: Shopping Service / POS Service
 CREATE TABLE retail.orders (
      order_id  serial PRIMARY KEY,
      sku       VARCHAR(64) UNIQUE NOT NULL,
      accountid CHAR(10),
      order_details text,
      order_time TIMESTAMP,
      order_total int,
      store_num int
	)
 
--User
create table user
(
  accountid CHAR(10) PRIMARY KEY,
  username VARCHAR(64) UNIQUE NOT NULL,
  passhash BYTEA NOT NULL,
  firstname VARCHAR(64) NOT NULL,
  lastname VARCHAR(64) NOT NULL,
  state VARCHAR(2) NOT NULL
)
    	 



