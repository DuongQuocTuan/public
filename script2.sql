USE [CSDL2]
GO
/****** Object:  Table [dbo].[tblGIANG_VIEN]    Script Date: 01/05/2021 21:44:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblGIANG_VIEN](
	[MaGV] [varchar](50) NOT NULL,
	[TenGV] [nvarchar](max) NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[Phone] [varchar](11) NULL,
	[Email] [nvarchar](max) NULL,
	[PhanLoaiGV] [nvarchar](50) NULL,
	[Anh] [text] NULL,
 CONSTRAINT [PK_tblGIANG_VIEN] PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblGIANG_VIEN] ([MaGV], [TenGV], [GioiTinh], [Phone], [Email], [PhanLoaiGV], [Anh]) VALUES (N'GV01', N'Nhan Minh Phúc', N'Nam', N'0123456789', N'nmp@tvu.edu.vn', NULL, NULL)
INSERT [dbo].[tblGIANG_VIEN] ([MaGV], [TenGV], [GioiTinh], [Phone], [Email], [PhanLoaiGV], [Anh]) VALUES (N'GV02', N'Đoàn Phước Miền', N'Nam', N'0123456788', N'dpm@tvu.edu.vn', NULL, NULL)
INSERT [dbo].[tblGIANG_VIEN] ([MaGV], [TenGV], [GioiTinh], [Phone], [Email], [PhanLoaiGV], [Anh]) VALUES (N'GV03', N'Phạm Minh Đương', N'Nam', N'0123456888', N'pmd@tvu.edu.vn', NULL, NULL)
INSERT [dbo].[tblGIANG_VIEN] ([MaGV], [TenGV], [GioiTinh], [Phone], [Email], [PhanLoaiGV], [Anh]) VALUES (N'GV04', N'Nguyễn Khắc Quốc', N'Nam', N'0123444777', N'nkq@tvu.edu.vn', NULL, NULL)
INSERT [dbo].[tblGIANG_VIEN] ([MaGV], [TenGV], [GioiTinh], [Phone], [Email], [PhanLoaiGV], [Anh]) VALUES (N'GV05', N'Nguyễn Ngọc Đan Thanh', N'Nữ', N'0123654987', N'nndt@tvu.edu.vn', NULL, NULL)
/****** Object:  Table [dbo].[tblKHOA]    Script Date: 01/05/2021 21:44:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblKHOA](
	[MaKhoa] [varchar](50) NOT NULL,
	[TenKhoa] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblKHOA] PRIMARY KEY CLUSTERED 
(
	[MaKhoa] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblKHOA] ([MaKhoa], [TenKhoa]) VALUES (N'KTCN', N'Kỹ thuật và công nghệ')
INSERT [dbo].[tblKHOA] ([MaKhoa], [TenKhoa]) VALUES (N'KTL', N'Kinh tế luật')
INSERT [dbo].[tblKHOA] ([MaKhoa], [TenKhoa]) VALUES (N'NNTS', N'Nông nghiệp thủy sản')
INSERT [dbo].[tblKHOA] ([MaKhoa], [TenKhoa]) VALUES (N'SP', N'Sư phạm')
INSERT [dbo].[tblKHOA] ([MaKhoa], [TenKhoa]) VALUES (N'YD', N'Y dược')
/****** Object:  Table [dbo].[tblMON]    Script Date: 01/05/2021 21:44:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblMON](
	[MaMon] [varchar](50) NOT NULL,
	[TenMon] [nvarchar](max) NULL,
	[SoDVHT] [int] NULL,
	[MaGV] [varchar](50) NULL,
	[HocKi] [int] NULL,
	[MaKhoa] [varchar](50) NULL,
 CONSTRAINT [PK_tblMON] PRIMARY KEY CLUSTERED 
(
	[MaMon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblMON] ([MaMon], [TenMon], [SoDVHT], [MaGV], [HocKi], [MaKhoa]) VALUES (N'MM01', N'Lập trình web nâng cao', 3, N'GV01', 1, N'KTCN')
INSERT [dbo].[tblMON] ([MaMon], [TenMon], [SoDVHT], [MaGV], [HocKi], [MaKhoa]) VALUES (N'MM02', N'Tiểu phẫu', 3, N'GV02', 2, N'YD')
INSERT [dbo].[tblMON] ([MaMon], [TenMon], [SoDVHT], [MaGV], [HocKi], [MaKhoa]) VALUES (N'MM03', N'Luật dân sự', 2, N'GV03', 2, N'KTL')
INSERT [dbo].[tblMON] ([MaMon], [TenMon], [SoDVHT], [MaGV], [HocKi], [MaKhoa]) VALUES (N'MM04', N'Nuôi cá trồng rau', 1, N'GV04', 2, N'NNTS')
INSERT [dbo].[tblMON] ([MaMon], [TenMon], [SoDVHT], [MaGV], [HocKi], [MaKhoa]) VALUES (N'MM05', N'Múa và ca hát', 3, N'GV05', 1, N'SP')
/****** Object:  Table [dbo].[tblLOP]    Script Date: 01/05/2021 21:44:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblLOP](
	[MaKhoa] [varchar](50) NOT NULL,
	[MaLop] [varchar](50) NOT NULL,
	[TenLop] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblLOP] PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblLOP] ([MaKhoa], [MaLop], [TenLop]) VALUES (N'NNTS', N'DA17CNTP', N'ĐH Công nghệ thực phẩm 2017')
INSERT [dbo].[tblLOP] ([MaKhoa], [MaLop], [TenLop]) VALUES (N'YD', N'DA17DA', N'ĐH Dược A 2017')
INSERT [dbo].[tblLOP] ([MaKhoa], [MaLop], [TenLop]) VALUES (N'KTL', N'DA17LA', N'ĐH Luật A 2017')
INSERT [dbo].[tblLOP] ([MaKhoa], [MaLop], [TenLop]) VALUES (N'SP', N'DA17MN', N'ĐH Mầm non 2017')
INSERT [dbo].[tblLOP] ([MaKhoa], [MaLop], [TenLop]) VALUES (N'KTCN', N'DA17QTM', N'ĐH Quản trị mạng 2017')
INSERT [dbo].[tblLOP] ([MaKhoa], [MaLop], [TenLop]) VALUES (N'KTCN', N'DA17TT', N'ĐH Công nghệ thông tin 2017')
/****** Object:  Table [dbo].[tblSINH_VIEN]    Script Date: 01/05/2021 21:44:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSINH_VIEN](
	[MaSV] [varchar](50) NOT NULL,
	[HoTen] [nvarchar](max) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[MaLop] [varchar](50) NULL,
 CONSTRAINT [PK_tblSINH_VIEN] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblSINH_VIEN] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'SV01', N'Nguyễn Văn Nam', CAST(0xBD220B00 AS Date), N'Nam', N'Trà Vinh', N'DA17TT')
INSERT [dbo].[tblSINH_VIEN] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'SV02', N'Trần Thị Ngọc', CAST(0xD7220B00 AS Date), N'Nữ', N'Vĩnh Long', N'DA17QTM')
INSERT [dbo].[tblSINH_VIEN] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'SV03', N'Phạm Ngọc Thạch', CAST(0x52230B00 AS Date), N'Nam', N'Cà Mau', N'DA17LA')
INSERT [dbo].[tblSINH_VIEN] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'SV04', N'Trần Quốc Tuấn', CAST(0x95230B00 AS Date), N'Nam', N'Đồng Tháp', N'DA17CNTP')
INSERT [dbo].[tblSINH_VIEN] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'SV05', N'Lê Văn Duy', CAST(0x34230B00 AS Date), N'Nam', N'Trà Vinh', N'DA17MN')
INSERT [dbo].[tblSINH_VIEN] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'SV06', N'Nguyễn Thị Đẹp', CAST(0x49230B00 AS Date), N'Nữ', N'Cà Mau', N'DA17DA')
/****** Object:  Table [dbo].[tblKET_QUA]    Script Date: 01/05/2021 21:44:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblKET_QUA](
	[MaSV] [varchar](50) NULL,
	[HoTen] [nvarchar](max) NULL,
	[MaLop] [varchar](50) NULL,
	[MaMon] [varchar](50) NULL,
	[DiemTB] [float] NULL,
	[DiemThiLan1] [float] NULL,
	[DiemThiLan2] [float] NULL,
	[DiemTongKet] [float] NULL,
	[HanhKiem] [nvarchar](50) NULL,
	[HocKi] [int] NULL,
	[GhiChu] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'SV01', N'Nguyễn Văn Nam', N'DA17TT', N'MM01', 8, 10, NULL, 9, N'Tốt', 1, NULL)
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'SV02', N'Trần Thị Ngọc', N'DA17QTM', N'MM01', 9, 9, NULL, 9, N'Tốt', 1, NULL)
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'SV03', N'Phạm Ngọc Thạch', N'DA17LA', N'MM03', 8, 8, NULL, 8, N'Khá', 2, NULL)
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'SV04', N'Trần Quốc Tuấn', N'DA17CNTP', N'MM04', 8, 10, NULL, 9, N'Khá', 2, NULL)
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'SV05', N'Lê Văn Duy', N'DA17MN', N'MM05', 9, 9, NULL, 9, N'Xuất sắc', 1, NULL)
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'SV06', N'Nguyễn Thị Đẹp', N'DA17DA', N'MM02', 9, 9, NULL, 9, N'Tốt', 1, NULL)
/****** Object:  ForeignKey [FK_tblKET_QUA_tblLOP]    Script Date: 01/05/2021 21:44:22 ******/
ALTER TABLE [dbo].[tblKET_QUA]  WITH CHECK ADD  CONSTRAINT [FK_tblKET_QUA_tblLOP] FOREIGN KEY([MaLop])
REFERENCES [dbo].[tblLOP] ([MaLop])
GO
ALTER TABLE [dbo].[tblKET_QUA] CHECK CONSTRAINT [FK_tblKET_QUA_tblLOP]
GO
/****** Object:  ForeignKey [FK_tblKET_QUA_tblMON]    Script Date: 01/05/2021 21:44:22 ******/
ALTER TABLE [dbo].[tblKET_QUA]  WITH CHECK ADD  CONSTRAINT [FK_tblKET_QUA_tblMON] FOREIGN KEY([MaMon])
REFERENCES [dbo].[tblMON] ([MaMon])
GO
ALTER TABLE [dbo].[tblKET_QUA] CHECK CONSTRAINT [FK_tblKET_QUA_tblMON]
GO
/****** Object:  ForeignKey [FK_tblKET_QUA_tblSINH_VIEN]    Script Date: 01/05/2021 21:44:22 ******/
ALTER TABLE [dbo].[tblKET_QUA]  WITH CHECK ADD  CONSTRAINT [FK_tblKET_QUA_tblSINH_VIEN] FOREIGN KEY([MaSV])
REFERENCES [dbo].[tblSINH_VIEN] ([MaSV])
GO
ALTER TABLE [dbo].[tblKET_QUA] CHECK CONSTRAINT [FK_tblKET_QUA_tblSINH_VIEN]
GO
/****** Object:  ForeignKey [FK_tblLOP_tblKHOA]    Script Date: 01/05/2021 21:44:22 ******/
ALTER TABLE [dbo].[tblLOP]  WITH CHECK ADD  CONSTRAINT [FK_tblLOP_tblKHOA] FOREIGN KEY([MaKhoa])
REFERENCES [dbo].[tblKHOA] ([MaKhoa])
GO
ALTER TABLE [dbo].[tblLOP] CHECK CONSTRAINT [FK_tblLOP_tblKHOA]
GO
/****** Object:  ForeignKey [FK_tblMON_tblGIANG_VIEN]    Script Date: 01/05/2021 21:44:22 ******/
ALTER TABLE [dbo].[tblMON]  WITH CHECK ADD  CONSTRAINT [FK_tblMON_tblGIANG_VIEN] FOREIGN KEY([MaGV])
REFERENCES [dbo].[tblGIANG_VIEN] ([MaGV])
GO
ALTER TABLE [dbo].[tblMON] CHECK CONSTRAINT [FK_tblMON_tblGIANG_VIEN]
GO
/****** Object:  ForeignKey [FK_tblSINH_VIEN_tblLOP]    Script Date: 01/05/2021 21:44:22 ******/
ALTER TABLE [dbo].[tblSINH_VIEN]  WITH CHECK ADD  CONSTRAINT [FK_tblSINH_VIEN_tblLOP] FOREIGN KEY([MaLop])
REFERENCES [dbo].[tblLOP] ([MaLop])
GO
ALTER TABLE [dbo].[tblSINH_VIEN] CHECK CONSTRAINT [FK_tblSINH_VIEN_tblLOP]
GO
