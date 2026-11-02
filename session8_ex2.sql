
CREATE DATABASE IF NOT EXISTS session8_ex2;
USE session8_ex2;
CREATE TABLE products (
product_id INT PRIMARY KEY,
product_name VARCHAR(100) NOT NULL,
category VARCHAR(100),
price DECIMAL(10,2)
);
-- truy vấn các sản phẩm thuộc loại được truyền vào
-- Tạo Stored Procedure có tên sp_get_products_by_category
-- Procedure có 1 tham số IN:
-- loại sản phẩm
DELIMITER // 
CREATE PROCEDURE sp_get_products_by_category (IN products_IN VARCHAR (50))
BEGIN 
SELECT*FROM products WHERE category = products_IN ;
END //
DELIMITER ;
SELECT*FROM products;

INSERT INTO products (product_id,product_name, category, price) VALUES 
(1,'iPhone 15', 'Điện thoại', 20000000),
(2,'Dell XPS', 'Laptop', 30000000),
(3,'Samsung S24', 'Điện thoại', 18000000);


-- Viết câu lệnh CALL để gọi procedure với giá trị cụ thể
CALL sp_get_products_by_category ('Điện thoại');
