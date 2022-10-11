-- Thực hành SQL bài 4

-- 4.1. Tìm nhân viên trong tên có chữ “A”
SELECT * FROM employees
WHERE first_name LIKE '%A%';

-- 4.2. Tìm nhân viên trong họ tên có chữ “V”
SELECT * FROM employees
WHERE first_name OR last_name LIKE '%A%';

-- 4.3. Tìm nhân viên chưa có phân công vào phòng nào.
SELECT * FROM employees
WHERE department_id = NULL;

-- 4.4. Tìm nhân viên vào công ty trong năm 2000
SELECT * FROM employees
WHERE YEAR(hire_date) = 2000;

-- 4.5. Tìm nhân viên sinh vào công ty trong các tháng chẵn.
SELECT * FROM employees
WHERE MONTH(hire_date) % 2 = 0;

-- 4.6. Hiển thị danh sách phòng cùng mã nhân viên, họ, tên, ngày
-- vào công ty, thâm niên của nhân viên có thâm niên trên 30 năm
-- cho tới ngày hiện tại.
SELECT 
	dpm.department_name AS DepartmentName,
	emp.first_name AS FirstName,
	emp.last_name AS LastName,
	emp.hire_date AS HiredDate,
	YEAR(GETDATE()) - YEAR(employees.hire_date) AS YearsInCompany
FROM employees emp, departments dpm
WHERE emp.department_id = dpm.department_id;


-- 4.7. Hiển thị tổng số nhân viên của công ty.
SELECT COUNT(employee_id) AS NumbersOfEmployees 
FROM employees;

-- 4.8. Hiển thị tên phòng và tổng số nhân viên của phòng đó
SELECT 
	dpm.department_name AS DepartmentName, 
	COUNT(emp.employee_id) AS NumbersOfEmployees
FROM departments dpm, employees emp
WHERE emp.employee_id = dmp.department_id
GROUP BY dpm.department_name;
	

-- 4.9. Hiển thị tên phòng và tổng số nhân viên của phòng đó, nếu
-- không có nhân viên thì hiển thị là 0.
SELECT 
	dpm.department_name AS DepartmentName, 
	COUNT(emp.employee_id) AS NumbersOfEmployees
FROM departments dpm
RIGHT JOIN employees emp ON emp.employee_id = dmp.department_id
GROUP BY dpm.department_name;

-- 4.10. Hiển thị danh sách phòng cùng mã nhân viên, họ, tên,
-- ngày vào công ty, lương của nhân viên có lương cao nhất
-- phòng.
SELECT
	dpm.department_name AS DepartmentName,
	emp.employee_id AS EmployeeID,
	emp.first_name AS FirstName,
	emp.last_name AS LastName,
	emp.hire_date AS HiredDate,
	emp.salary AS Salary
FROM departments dpm, employees emp
WHERE emp.salary = (SELECT MAX(emp.salary) FROM emp);
