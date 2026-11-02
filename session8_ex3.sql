CREATE DATABASE IF NOT EXISTS session8_ex3;
USE session8_ex3;
CREATE TABLE employees (
emp_id INT PRIMARY KEY,
full_name VARCHAR(100) NOT NULL,
salary INT
);
INSERT INTO employees (emp_id, full_name, salary) VALUES
(1, 'Nguyễn Văn A', 15000000),
(2, 'Trần Thị B', 18000000),
(3, 'Lê Hoàng C', 12000000),
(4, 'Phạm Minh D', 25000000),
(5, 'Vũ Thị E', 16500000);

DROP PROCEDURE IF EXISTS sp_get_avg_salary;
DELIMITER // 
CREATE PROCEDURE sp_get_avg_salary ( )
BEGIN 
DECLARE luong_trung_binh INT;
SELECT AVG(salary) INTO luong_trung_binh FROM employees;
SELECT luong_trung_bình AS 'luong_trung_binh';
END //
DELIMITER ;
CALL sp_get_avg_salary;

#Quản lý muốn biết mức lương trung bình của toàn bộ nhân viên, nhưng không muốn tính trực tiếp bên ngoài

#Yêu cầu:
#Tạo Stored Procedure có tên sp_get_avg_salary
#Trong procedure:
#khai báo một biến lưu lương trung bình
#Gán giá trị cho biến bằng kết quả truy vấn
#Hiển thị giá trị của biến ra màn hình
 