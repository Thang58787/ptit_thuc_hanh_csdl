-- Thực hành SQL bài 2

DROP DATABASE dblab;
CREATE DATABASE dblab;
USE dblab;

-- 2.1. Bảng Khoa
DROP TABLE Khoa;

CREATE TABLE Khoa (
    MaKhoa varchar(4) NOT NULL PRIMARY KEY,
    TenKhoa nvarchar(100) NOT NULL
);

INSERT INTO Khoa(MaKhoa, TenKhoa)
VALUES ('VT01', N'Viễn Thông 1');
INSERT INTO Khoa(MaKhoa, TenKhoa)
VALUES ('VT02', N'Viễn Thông 2');
INSERT INTO Khoa(MaKhoa, TenKhoa)
VALUES ('VT03', N'Viễn Thông 3');

sp_help Khoa;
SELECT * FROM Khoa;

-- 2.2. Bảng SinhVien
DROP TABLE SinhVien;

CREATE TABLE SinhVien (
    MaSV int NOT NULL PRIMARY KEY,
    TenSV nvarchar(100) NOT NULL,
    NgaySinh date NOT NULL,
    MaKhoa nvarchar(4),
    DiaChi nvarchar(200)
);

DELETE FROM SinhVien;

INSERT INTO SinhVien(MaSV, TenSV, MaKhoa, NgaySinh)
VALUES ('061', N'Trần Xuân Dũng', 'VT01', '2001-3-4');
INSERT INTO SinhVien(MaSV, TenSV, MaKhoa, NgaySinh)
VALUES ('093', N'Lê Văn Đức', 'VT02', '2001-7-12');
INSERT INTO SinhVien(MaSV, TenSV, MaKhoa, NgaySinh)
VALUES ('120', N'Phạm Văn Hào', 'VT01', '2001-5-5');
INSERT INTO SinhVien(MaSV, TenSV, MaKhoa, NgaySinh)
VALUES ('159', N'Nguyễn Văn Hoàng', 'VT03', '2001-11-17');
INSERT INTO SinhVien(MaSV, TenSV, MaKhoa, NgaySinh)
VALUES ('161', N'Võ Việt Hoàng', 'VT01', '2001-5-2');

sp_help Khoa;
SELECT * FROM SinhVien;

-- 2.3. Bổ sung thêm cột “dienthoai” cho bảng sinh viên.
ALTER TABLE SinhVien 
ADD DienThoai nvarchar(20);

sp_help SinhVien;
EXEC sp_columns SinhVien;

-- 2.4. Mở độ rộng cho cột dienthoai để có lưu số điện thoại có cả
-- mã vùng và số máy nội bộ.

-- 2.5. Bổ sung constraint cho bảng sinhvien để (tên, ngày sinh)
-- không trùng nhau.
ALTER TABLE SinhVien
ADD CONSTRAINT UN_TenSV UNIQUE (TenSV);

ALTER TABLE SinhVien
ADD CONSTRAINT UN_NgaySinh UNIQUE (NgaySinh);

sp_help SinhVien;

-- 2.6. Tạo một view chỉ cho hiển thị sinh viên của một khoa có mã
-- nhất định
SELECT * FROM SinhVien
WHERE MaKhoa = 'VT01';

-- 2.7. Gán quyền cho người dùng dblab.user02 có quyền thêm
-- bản ghi vào bảng sinhvien

-- 2.8. Tạo thêm index cho cột dienthoai của bảng sinhvien.
CREATE INDEX IDX_DienThoai
ON SinhVien(DienThoai);

sp_help SinhVien;
