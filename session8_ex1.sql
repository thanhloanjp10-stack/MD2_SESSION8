CREATE DATABASE IF NOT EXISTS session8_ex1;
USE session8_ex1;
CREATE TABLE students (
student_id INT PRIMARY KEY,
full_name VARCHAR(100) NOT NULL,
class VARCHAR(100)
);
DELIMITER // 
CREATE PROCEDURE sp_get_all_students ()
BEGIN 
SELECT*FROM students ;
END //
DELIMITER ;

CALL sp_get_all_students ();


-- Bảng students lưu thông tin sinh viên gồm:

-- mã sinh viên
-- họ tên
-- lớp học
-- Giảng viên thường xuyên cần xem danh sách toàn bộ sinh viên, vì vậy muốn tạo một Stored Procedure để sử dụng lại nhiều lần mà không cần viết lại câu lệnh SQL

--  

-- Yêu cầu:

-- Tạo một Stored Procedure có tên sp_get_all_students
-- Procedure không có tham số
-- Procedure thực hiện:
-- truy vấn danh sách toàn bộ sinh viên
-- Viết câu lệnh gọi procedure bằng CALL
 