USE EMPDB
create database EMPDB
CREATE TABLE Employees(
	id int not null primary key identity(0,1),
	first nvarchar (255),
	last nvarchar (255),
	age int not null
)
create table Products(
	id int primary key identity(1,1),
	[name] nvarchar(225)  not null 
)
select * from Products
INSERT INTO Products (name)
VALUES 
    ('Laptop'),
    ('PC'),
    ('TIVI'),
    ('Tu Lanh'),
    ('May Loc Nuoc'),
    ('Đien Thoai'),
    ('May anh'),
    ('May In'),
    ('Quat Đien'),
    ( 'Ban Là'),
    ('Tai Nghe'),
    ( 'O Cung Di Đong'),
    ( 'Loa Bluetooth'),
    ('Chuot Gaming'),
    ( 'Màn Hình LED'),
    ('Router Wifi'),
    ( 'Tay Cam Game'),
    ('Đèn LED Phòng Ngu'),
    ('Sac du phong');

DELETE FROM [dbo].[Products]WHERE id=6

select * from Products where name like '%i%'

drop table Products

delete from Products

where name='chung'


create table [user](
	ID int  not null  primary key,
	name nvarchar(225) not null,
	date date not null,
	address nvarchar(255) not null,
	phonenumber int not null,
	email nvarchar(225) ,
	username nvarchar(225) not null,
	password nvarchar(225) not null,
	role nvarchar(225) not null
)
insert into [user]  (ID,name,date,address,phonenumber,email,
username,password,role)
values
(1,'thuy','2003-12-1', 'vinh phuc',037894514, 'thuyconvinhphu@gmail.com',
'thuy123','12345', 'nhan vien'),
  (2,'john','1995-05-15', 'hanoi',098765432, 'john@gmail.com', 'john_doe','password123', 'quan ly'),
  (3,'mary','1980-08-22', 'danang',012345678, 'mary@gmail.com', 'mary_smith','pass123', 'quan ly'),
  (4,'alex','1992-02-28', 'hochiminh',036547891, 'alex@gmail.com', 'alex_89','alexpass', 'nhan vien'),
  (5,'sara','1998-11-10', 'hanoi',093214567, 'sara@gmail.com', 'sara_jane','sara@123', 'khach hang'),
  (6,'peter','1975-09-18', 'hochiminh',097856341, 'peter@gmail.com', 'peter_p','passpeter', 'khach hang'),
  (7,'lisa','1990-04-05', 'hanoi',085432176, 'lisa@gmail.com', 'lisa_l','lisa123', 'khach hang'),
  (8,'mark','1987-12-31', 'danang',065432189, 'mark@gmail.com', 'mark_m','markpass', 'nhan vien'),
  (9,'emily','1993-06-20', 'hanoi',091234567, 'emily@gmail.com', 'emily_e','emily123', 'nhan vien'),
  (10,'chris','1983-03-08', 'hochiminh',036598721, 'chris@gmail.com', 'chris_c','chrispass', 'quan ly');
  drop table [user]
select * from [user]

create table account(
	username nvarchar(255) not null primary key,
	password nvarchar(255) not null
)
insert into account values ('hanh', '123'),('thuy','1234'),('hung','1234');
select * from account where username='hanh'


CREATE TABLE STUDENTS(
	[SID] INT IDENTITY PRIMARY KEY,
	[NAME] NVARCHAR(255),
	[GENDER] INT,
	[DOB] DATE
)
INSERT INTO STUDENTS ([NAME],[GENDER],[DOB]) VALUES
(N'Đỗ Đức Hanh',1,'2003-11-02'),
(N'Hoàng Ngọc Thủy',1,'2003-10-8')

SELECT * FROM STUDENTS
DROP TABLE STUDENTS