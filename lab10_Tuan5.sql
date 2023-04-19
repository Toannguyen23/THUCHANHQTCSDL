CREATE LOGIN TruongLV WITH PASSWORD = '123456789';
go

USE QLBanHang;

CREATE USER TruongLV FOR LOGIN TruongLV;

go

USE master;

GRANT CREATE DATABASE TO TruongLV;
go

USE QLBanHang;

GRANT CREATE TABLE TO TruongLV;
go
--tạo và phân quyền cho AnhLV
CREATE LOGIN AnhLV WITH PASSWORD = '123456789';
go

USE QLBanHang;

CREATE USER AnhLV FOR LOGIN AnhLV;

go
USE QLBanHang;

GRANT VIEW ANY DATABASE TO AnhLV;
go
USE QLBanHang;

GRANT INSERT ON dbo.PhongMay TO AnhLV;
go
-- sao lưu và khôi phục dữ liệu

Backup database QLBanHang to disk = 'D:\NguyenMinhtoan_HeQTcosoDL\QLBanHang.bak'
go
--difference backup
Backup database QLBanHang to disk = 'D:\NguyenMinhtoan_HeQTcosoDL\QLBanHang.bak' with differential


-- bakup transaction 

backup log QuanLyBanHang to disk = 'D:\NguyenMinhtoan_HeQTcosoDL\QLBH.trn'
go