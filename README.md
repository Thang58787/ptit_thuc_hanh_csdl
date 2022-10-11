# Thực hành SQL  
Khi thực hành:  
Ghi lại hết các đáp án vào một file, mỗi đáp án có nội dung như sau:  
Đáp án câu <số>:  
<lệnh SQL>  

## 1. Môi trường  
Sử dụng database dblab và user dblab.admin.  
Nếu muốn sử dụng dòng lệnh thì thực hiện như sau:  
Sử dụng MobaXterm kết nối lab 192.168.0.105 bằng SSH.  
Kết nối đến database bằng lệnh kết nối sau:  
mysql -h 192.168.0.105 -D dblab -udblab.admin -p  
1.1. Hiển thị phiên bản của database  
1.2. Hiển thị danh sách database  
1.3. Hiển thị danh sách các table của một database  
1.4. Hiển thị cấu trúc của một table.  
1.5. Hiển thị user đang kết nối  
1.6. Hiển thị database(schema) đang sử dụng.  
1.7. Hiển thị ngày giờ hiện tại của database.  
## 2. DDL  
Sử dụng database dblab và user dblab.admin.  
Nếu muốn sử dụng dòng lệnh thì thực hiện như sau:  
Sử dụng MobaXterm kết nối lab 192.168.0.105 bằng SSH.  
Kết nối đến database bằng lệnh kết nối sau:  
mysql -h 192.168.0.105 -D dblab -udblab.admin -p  
Sử dụng mô hình ER sau:  
![](https://i.imgur.com/0TaGAMK.png)

2.1. Tạo bảng khoa  
2.2. Tạo bảng sinhvien  
2.3. Bổ sung thêm cột “dienthoai” cho bảng sinh viên.  
2.4. Mở độ rộng cho cột dienthoai để có lưu số điện thoại có cả  
mã vùng và số máy nội bộ.  
2.5. Bổ sung constraint cho bảng sinhvien để (tên, ngày sinh)  
không trùng nhau.  
2.6. Tạo một view chỉ cho hiển thị sinh viên của một khoa có mã  
nhất định  
2.7. Gán quyền cho người dùng dblab.user02 có quyền thêm  
bản ghi vào bảng sinhvien  
2.8. Tạo thêm index cho cột dienthoai của bảng sinhvien.  
## 3. DML  
Sử dụng database dblab và user dblab.user01.  
Nếu muốn sử dụng dòng lệnh thì thực hiện như sau:  
Sử dụng MobaXterm kết nối lab 192.168.0.105 bằng SSH.  
Kết nối đến database bằng lệnh kết nối sau:  
mysql -h 192.168.0.105 -D dblab -udblab.user01 -p  

3.1. Thêm 3 bản ghi mới vào table khoa  
3.2. Thêm 3 bản ghi mới vào bảng sinhvien  
3.3. Cập nhật số điện thoại thêm vào đầu mỗi số chuỗi '+84'.  
3.4. Cập nhật số điện thoại thêm vào đầu mỗi số chuỗi '+84'. Nếu  
số điện thoại đã có mã quốc tế thì không được thêm vào nữa.  
## 4. DQL  
Sử dụng database hr và user hr.user02.  
Nếu muốn sử dụng dòng lệnh thì thực hiện như sau:  
=> Sử dụng MobaXterm kết nối lab 192.168.0.105 bằng SSH.  
=> Kết nối đến database bằng lệnh kết nối sau:  
mysql -h 192.168.0.105 -D hr -uhr.user02 -p  
Tham khảo sơ đồ ER của hr như sau:  
![](https://i.imgur.com/xrlLQnR.png)

Viết lệnh SELECT để xử lý các yêu cầu sau đây:  
4.1. Tìm nhân viên trong tên có chữ “A”  
4.2. Tìm nhân viên trong họ tên có chữ “V”  
4.3. Tìm nhân viên chưa có phân công vào phòng nào.  
4.4. Tìm nhân viên vào công ty trong năm 2000  
4.5. Tìm nhân viên sinh vào công ty trong các tháng chẵn.  
4.6. Hiển thị danh sách phòng cùng mã nhân viên, họ, tên, ngày  
vào công ty, thâm niên của nhân viên có thâm niên trên 30 năm  
cho tới ngày hiện tại.  
4.7. Hiển thị tổng số nhân viên của công ty.  
4.8. Hiển thị tên phòng và tổng số nhân viên của phòng đó  
4.9. Hiển thị tên phòng và tổng số nhân viên của phòng đó, nếu  
không có nhân viên thì hiển thị là 0.  
4.10. Hiển thị danh sách phòng cùng mã nhân viên, họ, tên,  
ngày vào công ty, lương của nhân viên có lương cao nhất  
phòng.  
