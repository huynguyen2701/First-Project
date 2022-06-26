Use TruongHoc
-- Create table
Create Table HocSinh
(MaHS varchar(10),
HoTen varchar(64),
DiaChi varchar(64),
MaLop varchar(10)
);
-- Insert, delete and update data in table
-- Insert rows in table
insert dbo.HocSinh (MaHS, HoTen, DiaChi, MaLop)
Values 
	(3 , 'Nguyen_Ngoc_Anh', 'Nam_Dinh', 'A04'),
	(4 , 'Nguyen_Thi_Ngu', 'Nam_Dinh', 'A05');

-- Delete row in table
Delete dbo.HocSinh where MaLop = 'A01'
-- Update values in table
Update dbo.HocSinh set MaLop = 'A08' where MaHS = 3

-- Create primary key
Create table GiaoVien
(MaGV varchar(10) primary key,
TenGV varchar(64),
MaBM varchar(16)
);

-- Delete table in database
Drop table HocSinh

-- Tao lai bang SinhVien
Create Table HocSinh
(MaSV varchar(10),
HoTen varchar(64),
DiaChi varchar(64),
MaBM varchar(16)
);
Drop table HocSinh

Create Table SinhVien
(MaSV varchar(10) not null,
HoTen varchar(64),
DiaChi varchar(64),
MaBM varchar(16)
);
Alter Table SinhVien Add Constraint PK_SV Primary Key(MaSV)
-- Tao khoa ngoai
Create Table BoMon 
(MaBM Varchar(16),
TenBM varchar(64),
Primary Key (MaBM)
)
alter table GiaoVien Add Constraint FK_GiaoVien_BoMon foreign key (MaBM) references BoMon(MaBM)