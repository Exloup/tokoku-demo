CREATE DATABASE tokoku_db

CREATE TABLE mst_product(
id serial PRIMARY KEY,
name varchar (50),
product_desc text,
stock int,
price int);

CREATE TABLE trx_product(
id serial PRIMARY KEY,
trx_code varhar(50),
trx_date date,
product_id int,
quantity int,
CONSTRAINT fk_mst_product FOREIGN KEY(product_id)
REFERENCES mst_product(id));


