CREATE TABLE product (id SERIAL PRIMARY KEY, name VARCHAR (50) NOT NULL, 
parent_id INT REFERENCES product (id) ON DELETE CASCADE);

INSERT INTO product (name, parent_id) VALUES
('Electronics', NULL),
('Computers', 1),
('TVs', 1),
('Laptops', 2),
('Desktops', 2),
('LED', 3),
('OLED', 3),
('LCD', 3),
('Macbook', 4),
('ThinkPad', 4),
('iMac', 9),
('Mac Mini', 9),
('Mac Pro', 9),
('X1 Carbon', 10),
('T490', 10),
('T14s', 10);

SELECT p.name, parent_product.name AS parent_name
FROM product AS p 
INNER JOIN product AS parent_product ON (parent_product.id = p.parent_id);
