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
	    order_id text PRIMARY KEY,
           sku
	    user_id text,
           User_region  text,
	    order_details text,
	    order_time text,
	    order_total double,
      store_num
      
           ....
	)
 
--User
create table user
(
accountid CHAR(10) PRIMARY KEY,
username VARCHAR(64) UNIQUE NOT NULL,
passhash BYTEA NOT NULL,
firstname VARCHAR(64) NOT NULL,
lastname VARCHAR(64) NOT NULL,
address_state VARCHAR(2) NOT NULL
)
    	 



