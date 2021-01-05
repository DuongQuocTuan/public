USE [master]
GO
/****** Object:  Database [CSDL1]    Script Date: 12/30/2020 07:43:30 ******/
CREATE DATABASE [CSDL1] ON  PRIMARY 
( NAME = N'CSDL1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\CSDL1.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CSDL1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\CSDL1_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CSDL1] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CSDL1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CSDL1] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [CSDL1] SET ANSI_NULLS OFF
GO
ALTER DATABASE [CSDL1] SET ANSI_PADDING OFF
GO
ALTER DATABASE [CSDL1] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [CSDL1] SET ARITHABORT OFF
GO
ALTER DATABASE [CSDL1] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [CSDL1] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [CSDL1] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [CSDL1] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [CSDL1] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [CSDL1] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [CSDL1] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [CSDL1] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [CSDL1] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [CSDL1] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [CSDL1] SET  DISABLE_BROKER
GO
ALTER DATABASE [CSDL1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [CSDL1] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [CSDL1] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [CSDL1] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [CSDL1] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [CSDL1] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [CSDL1] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [CSDL1] SET  READ_WRITE
GO
ALTER DATABASE [CSDL1] SET RECOVERY SIMPLE
GO
ALTER DATABASE [CSDL1] SET  MULTI_USER
GO
ALTER DATABASE [CSDL1] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [CSDL1] SET DB_CHAINING OFF
GO
USE [CSDL1]
GO
/****** Object:  Table [dbo].[tblChatlieu]    Script Date: 12/30/2020 07:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblChatlieu](
	[Machatlieu] [varchar](50) NOT NULL,
	[Tenchatlieu] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblChatlieu] PRIMARY KEY CLUSTERED 
(
	[Machatlieu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblChatlieu] ([Machatlieu], [Tenchatlieu]) VALUES (N'CL01', N'Thun')
INSERT [dbo].[tblChatlieu] ([Machatlieu], [Tenchatlieu]) VALUES (N'CL02', N'Kate')
INSERT [dbo].[tblChatlieu] ([Machatlieu], [Tenchatlieu]) VALUES (N'CL03', N'KaKi')
INSERT [dbo].[tblChatlieu] ([Machatlieu], [Tenchatlieu]) VALUES (N'CL04', N'Jean')
INSERT [dbo].[tblChatlieu] ([Machatlieu], [Tenchatlieu]) VALUES (N'CL05', N'Lụa')
/****** Object:  Table [dbo].[tblNhanvien]    Script Date: 12/30/2020 07:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblNhanvien](
	[Manhanvien] [int] IDENTITY(1,1) NOT NULL,
	[Tennhanvien] [nvarchar](max) NULL,
	[Gioitinh] [nvarchar](50) NULL,
	[Diachi] [nvarchar](max) NULL,
	[Dienthoai] [varchar](11) NULL,
	[Ngaysinh] [date] NULL,
 CONSTRAINT [PK_tblNhanvien] PRIMARY KEY CLUSTERED 
(
	[Manhanvien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblNhanvien] ON
INSERT [dbo].[tblNhanvien] ([Manhanvien], [Tennhanvien], [Gioitinh], [Diachi], [Dienthoai], [Ngaysinh]) VALUES (1, N'Nguyễn Văn Nam', N'Nam', N'Trà Vinh', N'0123456789', CAST(0xBD220B00 AS Date))
INSERT [dbo].[tblNhanvien] ([Manhanvien], [Tennhanvien], [Gioitinh], [Diachi], [Dienthoai], [Ngaysinh]) VALUES (2, N'Trần Thị Ngọc', N'Nữ', N'Vĩnh Long', N'0123456788', CAST(0xD7220B00 AS Date))
INSERT [dbo].[tblNhanvien] ([Manhanvien], [Tennhanvien], [Gioitinh], [Diachi], [Dienthoai], [Ngaysinh]) VALUES (3, N'Phạm Ngọc Thạch', N'Nam', N'Cà Mau', N'0123456456', CAST(0x52230B00 AS Date))
INSERT [dbo].[tblNhanvien] ([Manhanvien], [Tennhanvien], [Gioitinh], [Diachi], [Dienthoai], [Ngaysinh]) VALUES (4, N'Trần Quốc Tuấn', N'Nam', N'Đồng Tháp', N'0123123123', CAST(0x95230B00 AS Date))
INSERT [dbo].[tblNhanvien] ([Manhanvien], [Tennhanvien], [Gioitinh], [Diachi], [Dienthoai], [Ngaysinh]) VALUES (5, N'Lê Văn Duy', N'Nam', N'Trà Vinh', N'0456789789', CAST(0x34230B00 AS Date))
SET IDENTITY_INSERT [dbo].[tblNhanvien] OFF
/****** Object:  Table [dbo].[tblKhach]    Script Date: 12/30/2020 07:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblKhach](
	[Makhach] [int] IDENTITY(1,1) NOT NULL,
	[Tenkhach] [nvarchar](max) NULL,
	[Diachi] [nvarchar](max) NULL,
	[Dienthoai] [varchar](11) NULL,
 CONSTRAINT [PK_tblKhach] PRIMARY KEY CLUSTERED 
(
	[Makhach] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblKhach] ON
INSERT [dbo].[tblKhach] ([Makhach], [Tenkhach], [Diachi], [Dienthoai]) VALUES (1, N'Nguyễn Ngọc Nam', N'Trà Vinh', N'0321654987')
INSERT [dbo].[tblKhach] ([Makhach], [Tenkhach], [Diachi], [Dienthoai]) VALUES (2, N'Trầm Tấn Hưng', N'Trà Vinh', N'0456321563')
INSERT [dbo].[tblKhach] ([Makhach], [Tenkhach], [Diachi], [Dienthoai]) VALUES (3, N'Võ Văn Duy', N'Vĩnh Long', N'0456789987')
INSERT [dbo].[tblKhach] ([Makhach], [Tenkhach], [Diachi], [Dienthoai]) VALUES (4, N'Đoàn Thị Yến', N'Đồng Tháp', N'0365456987')
INSERT [dbo].[tblKhach] ([Makhach], [Tenkhach], [Diachi], [Dienthoai]) VALUES (5, N'Dương Trần Thành', N'Vĩnh Long', N'0456231478')
SET IDENTITY_INSERT [dbo].[tblKhach] OFF
/****** Object:  Table [dbo].[tblHDBan]    Script Date: 12/30/2020 07:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHDBan](
	[MaHDBan] [int] IDENTITY(1,1) NOT NULL,
	[Manhanvien] [int] NULL,
	[Ngayban] [date] NULL,
	[Makhach] [int] NULL,
	[Tongtien] [bigint] NULL,
 CONSTRAINT [PK_tblHDBan] PRIMARY KEY CLUSTERED 
(
	[MaHDBan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblHDBan] ON
INSERT [dbo].[tblHDBan] ([MaHDBan], [Manhanvien], [Ngayban], [Makhach], [Tongtien]) VALUES (1, 1, CAST(0xFB410B00 AS Date), 1, 450000)
INSERT [dbo].[tblHDBan] ([MaHDBan], [Manhanvien], [Ngayban], [Makhach], [Tongtien]) VALUES (2, 1, CAST(0xFB410B00 AS Date), 2, 1600000)
INSERT [dbo].[tblHDBan] ([MaHDBan], [Manhanvien], [Ngayban], [Makhach], [Tongtien]) VALUES (3, 3, CAST(0xFB410B00 AS Date), 3, 700000)
INSERT [dbo].[tblHDBan] ([MaHDBan], [Manhanvien], [Ngayban], [Makhach], [Tongtien]) VALUES (4, 3, CAST(0xFA410B00 AS Date), 4, 2400000)
INSERT [dbo].[tblHDBan] ([MaHDBan], [Manhanvien], [Ngayban], [Makhach], [Tongtien]) VALUES (5, 4, CAST(0xFA410B00 AS Date), 5, 1600000)
INSERT [dbo].[tblHDBan] ([MaHDBan], [Manhanvien], [Ngayban], [Makhach], [Tongtien]) VALUES (6, 5, CAST(0xF9410B00 AS Date), 3, 300000)
INSERT [dbo].[tblHDBan] ([MaHDBan], [Manhanvien], [Ngayban], [Makhach], [Tongtien]) VALUES (7, 2, CAST(0xF8410B00 AS Date), 4, 600000)
SET IDENTITY_INSERT [dbo].[tblHDBan] OFF
/****** Object:  Table [dbo].[tblHang]    Script Date: 12/30/2020 07:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblHang](
	[Mahang] [varchar](50) NOT NULL,
	[Tenhang] [nvarchar](max) NULL,
	[Machatlieu] [varchar](50) NULL,
	[Soluong] [int] NULL,
	[Dongianhap] [bigint] NULL,
	[Dongiaban] [bigint] NULL,
	[Anh] [text] NULL,
	[Ghichu] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblHang] PRIMARY KEY CLUSTERED 
(
	[Mahang] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblHang] ([Mahang], [Tenhang], [Machatlieu], [Soluong], [Dongianhap], [Dongiaban], [Anh], [Ghichu]) VALUES (N'H01', N'Áo thun nam', N'CL01', 100, 100000, 150000, NULL, NULL)
INSERT [dbo].[tblHang] ([Mahang], [Tenhang], [Machatlieu], [Soluong], [Dongianhap], [Dongiaban], [Anh], [Ghichu]) VALUES (N'H02', N'Áo sơ mi nữ', N'CL02', 200, 500000, 800000, NULL, NULL)
INSERT [dbo].[tblHang] ([Mahang], [Tenhang], [Machatlieu], [Soluong], [Dongianhap], [Dongiaban], [Anh], [Ghichu]) VALUES (N'H03', N'Quần kaki', N'CL03', 100, 200000, 300000, NULL, NULL)
INSERT [dbo].[tblHang] ([Mahang], [Tenhang], [Machatlieu], [Soluong], [Dongianhap], [Dongiaban], [Anh], [Ghichu]) VALUES (N'H04', N'Quần jean', N'CL04', 500, 600000, 800000, NULL, NULL)
INSERT [dbo].[tblHang] ([Mahang], [Tenhang], [Machatlieu], [Soluong], [Dongianhap], [Dongiaban], [Anh], [Ghichu]) VALUES (N'H05', N'Giáp lụa', N'CL05', 300, 300000, 350000, NULL, NULL)
/****** Object:  Table [dbo].[tblChitietHDBan]    Script Date: 12/30/2020 07:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblChitietHDBan](
	[MaHDBan] [int] NOT NULL,
	[Mahang] [varchar](50) NOT NULL,
	[Soluong] [int] NULL,
	[Dongia] [bigint] NULL,
	[Giamgia] [bigint] NULL,
	[Thanhtien] [bigint] NULL,
 CONSTRAINT [PK_tblChitietHDBan] PRIMARY KEY CLUSTERED 
(
	[MaHDBan] ASC,
	[Mahang] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblChitietHDBan] ([MaHDBan], [Mahang], [Soluong], [Dongia], [Giamgia], [Thanhtien]) VALUES (1, N'H01', 1, 150000, 0, 150000)
INSERT [dbo].[tblChitietHDBan] ([MaHDBan], [Mahang], [Soluong], [Dongia], [Giamgia], [Thanhtien]) VALUES (1, N'H03', 1, 300000, 0, 300000)
INSERT [dbo].[tblChitietHDBan] ([MaHDBan], [Mahang], [Soluong], [Dongia], [Giamgia], [Thanhtien]) VALUES (2, N'H04', 2, 800000, 0, 1600000)
INSERT [dbo].[tblChitietHDBan] ([MaHDBan], [Mahang], [Soluong], [Dongia], [Giamgia], [Thanhtien]) VALUES (3, N'H05', 2, 350000, 0, 700000)
INSERT [dbo].[tblChitietHDBan] ([MaHDBan], [Mahang], [Soluong], [Dongia], [Giamgia], [Thanhtien]) VALUES (4, N'H02', 3, 800000, 0, 2400000)
INSERT [dbo].[tblChitietHDBan] ([MaHDBan], [Mahang], [Soluong], [Dongia], [Giamgia], [Thanhtien]) VALUES (5, N'H02', 1, 800000, 0, 800000)
INSERT [dbo].[tblChitietHDBan] ([MaHDBan], [Mahang], [Soluong], [Dongia], [Giamgia], [Thanhtien]) VALUES (5, N'H04', 1, 800000, 0, 800000)
INSERT [dbo].[tblChitietHDBan] ([MaHDBan], [Mahang], [Soluong], [Dongia], [Giamgia], [Thanhtien]) VALUES (6, N'H01', 2, 150000, 0, 300000)
INSERT [dbo].[tblChitietHDBan] ([MaHDBan], [Mahang], [Soluong], [Dongia], [Giamgia], [Thanhtien]) VALUES (7, N'H03', 2, 300000, 0, 600000)
/****** Object:  ForeignKey [FK_tblHDBan_tblKhach]    Script Date: 12/30/2020 07:43:33 ******/
ALTER TABLE [dbo].[tblHDBan]  WITH CHECK ADD  CONSTRAINT [FK_tblHDBan_tblKhach] FOREIGN KEY([Makhach])
REFERENCES [dbo].[tblKhach] ([Makhach])
GO
ALTER TABLE [dbo].[tblHDBan] CHECK CONSTRAINT [FK_tblHDBan_tblKhach]
GO
/****** Object:  ForeignKey [FK_tblHDBan_tblNhanvien]    Script Date: 12/30/2020 07:43:33 ******/
ALTER TABLE [dbo].[tblHDBan]  WITH CHECK ADD  CONSTRAINT [FK_tblHDBan_tblNhanvien] FOREIGN KEY([Manhanvien])
REFERENCES [dbo].[tblNhanvien] ([Manhanvien])
GO
ALTER TABLE [dbo].[tblHDBan] CHECK CONSTRAINT [FK_tblHDBan_tblNhanvien]
GO
/****** Object:  ForeignKey [FK_tblHang_tblChatlieu]    Script Date: 12/30/2020 07:43:33 ******/
ALTER TABLE [dbo].[tblHang]  WITH CHECK ADD  CONSTRAINT [FK_tblHang_tblChatlieu] FOREIGN KEY([Machatlieu])
REFERENCES [dbo].[tblChatlieu] ([Machatlieu])
GO
ALTER TABLE [dbo].[tblHang] CHECK CONSTRAINT [FK_tblHang_tblChatlieu]
GO
/****** Object:  ForeignKey [FK_tblChitietHDBan_tblHang]    Script Date: 12/30/2020 07:43:33 ******/
ALTER TABLE [dbo].[tblChitietHDBan]  WITH CHECK ADD  CONSTRAINT [FK_tblChitietHDBan_tblHang] FOREIGN KEY([Mahang])
REFERENCES [dbo].[tblHang] ([Mahang])
GO
ALTER TABLE [dbo].[tblChitietHDBan] CHECK CONSTRAINT [FK_tblChitietHDBan_tblHang]
GO
/****** Object:  ForeignKey [FK_tblChitietHDBan_tblHDBan]    Script Date: 12/30/2020 07:43:33 ******/
ALTER TABLE [dbo].[tblChitietHDBan]  WITH CHECK ADD  CONSTRAINT [FK_tblChitietHDBan_tblHDBan] FOREIGN KEY([MaHDBan])
REFERENCES [dbo].[tblHDBan] ([MaHDBan])
GO
ALTER TABLE [dbo].[tblChitietHDBan] CHECK CONSTRAINT [FK_tblChitietHDBan_tblHDBan]
GO
