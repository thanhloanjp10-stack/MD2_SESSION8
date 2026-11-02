CREATE DATABASE IF NOT EXISTS session8_ex4;
USE session8_ex4;
CREATE TABLE orders (
order_id INT PRIMARY KEY,
total_amount INT
);
INSERT INTO orders (order_id, total_amount) VALUES 
(1, 6500000),  
(2, 3200000),  
(3, 5000000),  
(4, 1500000),  
(5, 8000000); 
DROP PROCEDURE IF EXISTS sp_check_order_value;
DELIMITER // 
CREATE PROCEDURE sp_check_order_value (IN tổng_tiền_đơn_hàng INT)
BEGIN 
IF tổng_tiền_đơn_hàng >= 5000000 THEN
SELECT 'đơn_hàng_giá_trị_cao' AS 'thông báo';
ELSE 
SELECT 'đơn_hàng_bình_thường' AS 'thông báo';
END IF ;
END //
DELIMITER ;
CALL  sp_check_order_value (6500000);