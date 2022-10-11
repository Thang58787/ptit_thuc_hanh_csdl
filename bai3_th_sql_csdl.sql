-- Thực hành SQL bài 3
USE dblab;
SELECT DB_NAME();

-- 3.1. Thêm 3 bản ghi mới vào bảng khoa
DELETE FROM Khoa;

INSERT INTO Khoa(MaKhoa, TenKhoa)
VALUES ('VT01', N'Viễn Thông 1');
INSERT INTO Khoa(MaKhoa, TenKhoa)
VALUES ('VT02', N'Viễn Thông 2');
INSERT INTO Khoa(MaKhoa, TenKhoa)
VALUES ('VT03', N'Viễn Thông 3');

SELECT * FROM Khoa;

-- 3.2. Thêm 3 bản ghi mới vào bảng sinhvien
DELETE FROM SinhVien;

INSERT INTO SinhVien(MaSV, TenSV, MaKhoa, NgaySinh, Dienthoai, DiaChi)
VALUES ('061', N'Trần Xuân Dũng', 'VT01', '2001-3-4', 0394080581, N'Hà Nội');
INSERT INTO SinhVien(MaSV, TenSV, MaKhoa, NgaySinh, Dienthoai, DiaChi)
VALUES ('093', N'Lê Văn Đức', 'VT02', '2001-7-12', 0867990338, N'Hà Nội');
INSERT INTO SinhVien(MaSV, TenSV, MaKhoa, NgaySinh, Dienthoai, DiaChi)
VALUES ('120', N'Phạm Văn Hào', 'VT01', '2001-5-5', 0332097088, N'Hồ Chí Minh');

SELECT YEAR(GETDATE()) - YEAR(NgaySinh) as Tuoi FROM SinhVien;
SELECT NgaySinh as Tuoi FROM SinhVien;

-- 3.3. Cập nhật số điện thoại thêm vào đầu mỗi số chuỗi '+84'.
UPDATE SinhVien
SET Dienthoai=concat('+84',DienThoai);

-- 3.4. Cập nhật số điện thoại thêm vào đầu mỗi số chuỗi '+84'. Nếu
-- số điện thoại đã có mã quốc tế thì không được thêm vào nữa.
UPDATE SinhVien
SET Dienthoai=concat('+84',DienThoai)
WHERE substring(DienThoai,1,3)!='+84';

SELECT * FROM SinhVien;