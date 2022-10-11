-- Thực hành SQL

-- Chuẩn bị
CREATE DATABASE SqlTutorials;
USE SqlTutorials;

CREATE TABLE Customers (
	CustomerID int NOT NULL IDENTITY PRIMARY KEY,    
    CustomerName varchar(300),
    Address varchar(1000),
    Phone varchar(20),
    City varchar(150),
    Country varchar(200),
);
INSERT INTO Customers(CustomerName,Address,Phone,City,Country) VALUES('Thomas Hardy', '120 Hanover Sq','0123-456-789','London', 'UK');
INSERT INTO Customers(CustomerName,Address,Phone,City,Country) VALUES('Ann Devon', '35 King George','0234-458-417', 'Madrid', 'Spain');
INSERT INTO Customers(CustomerName,Address,Phone,City,Country) VALUES('Maria Larsson', 'Åkergatan 24','0111-456-325', 'Bräcke', 'Sweden');
INSERT INTO Customers(CustomerName,Address,Phone,City,Country) VALUES('Christina Berglund', 'Berguvsvägen 8','0111-456-325', 'Luleå', 'Sweden');
INSERT INTO Customers(CustomerName,Address,Phone,City,Country) VALUES('André Fonseca', 'Av. Brasil, 442','0333-142-687', 'Campinas', 'Brazil');
INSERT INTO Customers(CustomerName,Address,Phone,City,Country) VALUES('Lehmanns Marktstand', 'Magazinweg 7','0222-596-977', 'Frankfurt', 'Germany');

CREATE TABLE Suppliers (
    SupplierID int NOT NULL IDENTITY PRIMARY KEY,    
    SupplierName varchar(400),
    ContactName varchar(400),
    Address varchar(1000),
    Phone varchar(20),
    City varchar(150),
    Country varchar(200)
);

INSERT INTO Suppliers(SupplierName,ContactName,Address,Phone,City,Country) VALUES('Pavlova, Ltd', 'Ian Devling','74 Rose St. Moonie Ponds','(03) 444-2343','Melbourne','Australia');
INSERT INTO Suppliers(SupplierName,ContactName,Address,Phone,City,Country) VALUES('G''s day', 'Wendy Mackenzie','170 Prince Edward Parade Hunter''s Hill','(02) 555-5914','Sydney','Australia');
INSERT INTO Suppliers(SupplierName,ContactName,Address,Phone,City,Country) VALUES('New Orleans Cajun Delights', 'Shelley Burke','P.O. Box 78934','(03) 444-2343','New Orleans','USA');
INSERT INTO Suppliers(SupplierName,ContactName,Address,Phone,City,Country) VALUES('Svensk Sjöföda AB', 'Michael Björn','Brovallavägen 231','08-123 45 67','Melbourne','Sweden');
INSERT INTO Suppliers(SupplierName,ContactName,Address,Phone,City,Country) VALUES('Karkki Oy', 'Anne Heikkonen','Valtakatu 12','(953) 10956','Lappeenranta','Finland');
INSERT INTO Suppliers(SupplierName,ContactName,Address,Phone,City,Country) VALUES('Escargots Nouveaux', 'Marie Delamare','22, rue H. Voiron','85.57.00.07','Montceau','France');
INSERT INTO Suppliers(SupplierName,ContactName,Address,Phone,City,Country) VALUES(' Leka Trading', 'Chandra Leka','471 Serangoon Loop, Suite #402','555-8787','Singapore','Singapore');

CREATE TABLE Categories (
    CategoryID int NOT NULL IDENTITY PRIMARY KEY,    
    CategoryName varchar(400),
    Description text
);
INSERT INTO Categories(CategoryName, Description) VALUES('Beverages', 'Soft drinks, beer, coffee, tea');
INSERT INTO Categories(CategoryName, Description) VALUES('Seafood', 'Fish, crabs, oysters');
INSERT INTO Categories(CategoryName, Description) VALUES('Cereals', 'Bread, cereals, corn');
INSERT INTO Categories(CategoryName, Description) VALUES('Confections', 'Candies, and sweet breads');
INSERT INTO Categories(CategoryName, Description) VALUES('Electronics', 'Laptop, desktop, iphone, ipad, macbook');

-- 1.1. Hiển thị phiên bản của database
SELECT @@version;

-- 1.2. Hiển thị danh sách database
SELECT * FROM sys.databases;

-- 1.3. Hiển thị danh sách các table của một database
SELECT * FROM sys.tables;

-- 1.4. Hiển thị cấu trúc của một table.
sp_help Categories;

-- 1.5. Hiển thị user đang kết nối
sp_who;

-- 1.6. Hiển thị database(schema) đang sử dụng.
SELECT DB_NAME();

-- 1.7. Hiển thị ngày giờ hiện tại của database.
SELECT GETDATE();


CREATE DATABASE SqlTutorials;
USE SqlTutorials;
SELECT db_name();
