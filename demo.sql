DROP DATABASE IF EXISTS product_managenement;
CREATE TABLE product_managenement;

USE product_managenement;

CREATE TABLE product (
	product_id CHAR(5) PRIMARY KEY,
    product_name VARCHAR(15),
    `description` TEXT,
    image BLOB,
    is_deleted BOOLEAN,
    price DOUBLE,
    manufacture_date DATE
);