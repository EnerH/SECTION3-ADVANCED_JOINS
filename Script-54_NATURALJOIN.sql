CREATE TABLE categories (category_id serial PRIMARY KEY, category_name VARCHAR(255) NOT NULL);

INSERT INTO categories (category_name)
VALUES ('Smart Phone'), ('Laptop'), ('Tablet');

CREATE TABLE products (product_id serial PRIMARY KEY,
product_name VARCHAR (255) NOT NULL,
category_id INT NOT NULL,
FOREIGN KEY (category_id) REFERENCES categories (category_id));

INSERT INTO products (product_name, category_id)
VALUES ('iPhone', 1), ('Samsung', 1), ('HP Elite', 2), ('Lenovo Thinkpad', 2), ('iPad', 3), ('Kindle Fire', 3);

SELECT *
FROM products
NATURAL JOIN categories;