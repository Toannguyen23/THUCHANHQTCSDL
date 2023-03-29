create table HangSanXuat(
mahangsx nchar(10) primary key,
tenhang nvarchar(20),
diachi nvarchar(30),
sodienthoai nvarchar(20),
email nvarchar(30),
)
go

create table SanPham(
masp nchar(10) primary key,
mahangsx nchar(10) foreign key references HangSanXuat(mahangsx),
tensp nvarchar(20),
soluong int,
mausac nvarchar(20),
giaban money,
donvitinh nchar(10),
mota nvarchar(max),
)
go

create table 1(
manv nchar(10) primary key,
tennv nvarchar(20),
gioitinh nchar(10),
diachi nvarchar(30),
sodienthoai nvarchar(20),
email nvarchar(30),
phong nvarchar(30),
)
go

create table Nhap(
sohdn nchar(10) primary key,
masp nchar(10) foreign key references SanPham(masp) , 
manv nchar(10) foreign key references NhanVien(manv),
ngaynhap date,
soluongN int,
dongiaN money,
)
go

create table Xuat(
sohdX nchar(10) primary key,
masp nchar(10)foreign key references SanPham(masp),
manv nchar(10) foreign key references NhanVien(manv),
ngayxuat date,
soluongX int,
)
/*insert into HangSanXuat 
values('H01','Samsung','Korea','011-08271717','ss@gmail.com.kr')
insert into HangSanXuat
values('H02','OPPO','China','081-08626262','oppo@gmail.com.cn')
insert into HangSanXuat
values('H03','Vinfone','Việt nam','084-098262626','vf@gmail.com.vn')
go */

insert into NhanVien
values('NV01','Nguyễn Thi Thu','Nữ','Hà Nội','0982626521','thu@gmail.com','Kế toán')
insert into NhanVien
values('NV02','Lê Văn Nam','Nam','Bắc Ninh','0972525252','nam@gmail.com','Vật tư')
insert into NhanVien
values('NV03','Trần Hòa Bình','Nữ','Hà Nội','03283883','hb@gmail.com','Kế toán')
go

insert into SanPham
values('SP01','H02','F1 Plus',100,'Xám',7000000,'Chiếc','Hàng cận cao cấp')
insert into SanPham
values('SP02','H01','Galaxy Note 11',50,'Đỏ',19000000,'Chiếc','Hàng cao cấp')
insert into SanPham
values('SP03','H02','F3 lite',200,'Nâu',3000000,'Chiếc','Hàng phổ thông','')
insert into SanPham
values('SP04','H03','Vjoy3',200,'Xám',1500000,'Chiếc','Hàng phổ thông')
insert into SanPham
values('SP05','H01','Galaxy V21',500,'Nâu',8000000,'Chiếc','Hàng cận cao cấp')
go

insert into Nhap
values('N01','SP02','NV01','02-05-2019',10,17000000)
insert into Nhap
values('N02','SP01','NV02','04-07-2020',30,6000000)
insert into Nhap
values('N03','SP04','NV02',05-17-2020,20,1200000)
insert into Nhap
values('N04','SP01','NV03',03-22-2020,10,6200000)
insert into Nhap
values('N05','SP05','NV01',07-07-2020,20,7000000)
go

insert into Xuat
values('X01','SP03','NV02',06-14-2020,5)
insert into Xuat
values('X02','SP01','NV03',03-05-2019 ,3 )
insert into Xuat
values('X03','SP02','NV01',12-12-2020 ,1 )
insert into Xuat
values('X04','SP03','NV02',06-02-2020 ,2 )
insert into Xuat
values('X05','SP05','