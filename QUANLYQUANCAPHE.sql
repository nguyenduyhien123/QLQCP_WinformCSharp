﻿CREATE TABLE [dbo].[CHITIETHDB](
	[MACTHD] [varchar](10) NOT NULL,
	[MAHDB] [varchar](5) NOT NULL,
	[MACTSP] [varchar](5) NOT NULL,
	[GIAVON] [money] NOT NULL,
	[GIABAN] [money] NULL,
	[GIABANSAUKHIGIAM] [money] NULL,
	[SOLUONG] [int] NULL,
	[TRANGTHAI] [nvarchar](20) NOT NULL CONSTRAINT [DF__CHITIETHD__TRANG__267ABA7A]  DEFAULT ((1)),
 CONSTRAINT [PK_CHITIETHD] PRIMARY KEY CLUSTERED 
(
	[MACTHD] ASC,
	[MAHDB] ASC,
	[MACTSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[CHITIETHDN](
	[MACTHDN] [varchar](50) NULL,
	[MAHDN] [char](3) NULL,
	[MACTSP] [varchar](5) NULL,
	[SOLUONG] [int] NULL,
	[DONGIA] [money] NULL,
	[TRANGTHAI] [nvarchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CHITIETKM]    Script Date: 10/04/23 1:43:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CHITIETKM](
	[MACTKM] [varchar](15) NOT NULL,
	[MACTHDB] [varchar](20) NULL,
	[MAKM] [varchar](10) NULL,
	[GIATIENSAUKHIGIAM] [money] NULL,
 CONSTRAINT [PK_CHITIETKM] PRIMARY KEY CLUSTERED 
(
	[MACTKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[CHITIETSANPHAM](
	[MACTSP] [varchar](5) NOT NULL,
	[MASP] [varchar](5) NOT NULL,
	[MASIZE] [char](1) NOT NULL,
	[SOLUONG] [int] NULL,
	[MOTA] [nvarchar](255) NULL,
	[GIABAN] [money] NULL,
	[GIAVON] [money] NULL,
	[TRANGTHAI] [nvarchar](20) NULL CONSTRAINT [DF__CHITIETSA__TRANG__276EDEB3]  DEFAULT ((1)),
 CONSTRAINT [PK_CHITIETSANPHAM] PRIMARY KEY CLUSTERED 
(
	[MACTSP] ASC,
	[MASP] ASC,
	[MASIZE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
CREATE TABLE [dbo].[DATBAN](
	[MABAN] [varchar](50) NOT NULL,
	[MAKH] [varchar](5) NOT NULL,
	[NGAYDAT] [datetime] NULL,
	[TRANGTHAI] [varchar](50) NULL,
	[MADATBAN] [varchar](50) NULL
) ON [PRIMARY]

CREATE TABLE [dbo].[HOADONBAN](
	[MAHDB] [varchar](5) NOT NULL,
	[MAKH] [varchar](5) NULL,
	[TONGTIENTHANHTOAN] [money] NULL,
	[MANV_LAP] [varchar](5) NULL,
	[NGAYLAPHD] [datetime] NULL,
	[TRANGTHAI] [nvarchar](20) NULL CONSTRAINT [DF__HOADONBAN__TRANG__286302EC]  DEFAULT ((1)),
	[GHICHU] [nvarchar](255) NULL,
 CONSTRAINT [PK__HOADONBA__78C57A9BF50A65FE] PRIMARY KEY CLUSTERED 
(
	[MAHDB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[HOADONNHAP](
	[MAHDN] [varchar](5) NOT NULL,
	[NGAYLAP] [datetime] NOT NULL,
	[MANV_LAP] [varchar](5) NOT NULL,
	[MANCC] [varchar](3) NULL,
	[TRANGTHAI] [nvarchar](20) NULL,
	[THANHTIEN] [money] NULL,
 CONSTRAINT [PK__HOADONNH__78C57AAFCB73AEEF] PRIMARY KEY CLUSTERED 
(
	[MAHDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[KHACHHANG](
	[MAKH] [varchar](5) NOT NULL,
	[TENKH] [nvarchar](255) NULL,
	[DIACHI] [nvarchar](255) NULL,
	[SDT] [char](10) NULL,
	[NGAYSINH] [datetime] NULL,
	[TRANGTHAI] [nvarchar](20) NULL CONSTRAINT [DF__KHACHHANG__TRANG__58D1301D]  DEFAULT ((1)),
 CONSTRAINT [PK__KHACHHAN__603F592C437B2FCC] PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[KHUYENMAI](
	[MAKM] [varchar](10) NOT NULL,
	[LOAIKHUYENMAI] [nvarchar](50) NULL,
	[TENKM] [nvarchar](50) NULL,
	[NGAYBATDAU] [datetime] NULL CONSTRAINT [DF__KHUYENMAI__NGAYT__2A4B4B5E]  DEFAULT (getdate()),
	[NGAYHETHAN] [datetime] NULL,
	[GIAMTHEOPHANTRAM] [float] NULL,
	[GIAMTIENTRUCTIEP] [money] NULL,
	[SUAGIA] [money] NULL,
	[TRANGTHAI] [nvarchar](50) NULL CONSTRAINT [DF__KHUYENMAI__TRANG__2B3F6F97]  DEFAULT ((0)),
 CONSTRAINT [PK__KHUYENMA__603F592B24047972] PRIMARY KEY CLUSTERED 
(
	[MAKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[NHACC](
	[MANCC] [varchar](3) NOT NULL,
	[TENNCC] [nvarchar](50) NULL,
	[SDT] [char](10) NULL,
	[DIACHI] [nvarchar](100) NULL,
	[MOTA] [nvarchar](200) NULL,
	[TRANGTHAI] [nvarchar](50) NULL CONSTRAINT [DF__NHACC__TRANGTHAI__2D27B809]  DEFAULT ((1)),
 CONSTRAINT [PK__NHACC__7ABEA582FAACDC62] PRIMARY KEY CLUSTERED 
(
	[MANCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[NHANVIEN](
	[MANV] [varchar](5) NOT NULL,
	[TENNV] [nvarchar](255) NULL,
	[DIACHI] [nvarchar](255) NULL,
	[SDT] [char](10) NULL,
	[CHUCVU] [nvarchar](255) NULL,
	[NGAYVAOLAM] [datetime] NULL,
	[GIOITINH] [nvarchar](3) NULL,
	[NGAYSINH] [datetime] NULL,
	[TRANGTHAI] [nvarchar](50) NULL CONSTRAINT [DF__NHANVIEN__TRANGT__2E1BDC42]  DEFAULT ((1)),
 CONSTRAINT [PK__NHANVIEN__603F5114F0996120] PRIMARY KEY CLUSTERED 
(
	[MANV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[SANPHAM](
	[MASP] [varchar](5) NOT NULL,
	[TENSP] [nvarchar](255) NULL,
	[LINK_IMG] [varchar](255) NULL,
	[DONVITINH] [nvarchar](25) NULL,
	[MOTA] [nvarchar](255) NULL,
	[TRANGTHAI] [nvarchar](20) NULL CONSTRAINT [DF__SANPHAM__TRANGTH__2F10007B]  DEFAULT ((1)),
	[MANCC] [char](3) NULL,
 CONSTRAINT [PK__SANPHAM__60228A3200703CE7] PRIMARY KEY CLUSTERED 
(
	[MASP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[SIZE](
	[MASIZE] [char](1) NOT NULL,
	[MOTA] [nvarchar](255) NULL,
	[TRANGTHAI] [bit] NOT NULL,
 CONSTRAINT [PK_SIZE] PRIMARY KEY CLUSTERED 
(
	[MASIZE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]



INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'1', N'Bàn 01', N'DANG SU DUNG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'10', N'Bàn 10', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'11', N'Bàn 11', N'DANG SU DUNG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'12', N'Bàn 12', N'DANG SU DUNG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'13', N'Bàn 13', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'14', N'Bàn 14', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'15', N'Bàn 15', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'16', N'Bàn 16', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'17', N'Bàn 17', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'18', N'Bàn 18', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'19', N'Bàn 19', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'2', N'Bàn 02', N'DAT BAN TRUOC')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'20', N'Bàn 20', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'21', N'Bàn 21', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'22', N'Bàn 22', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'23', N'Bàn 23', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'24', N'Bàn 24', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'25', N'Bàn 25', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'26', N'Bàn 26', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'27', N'Bàn 27', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'28', N'Bàn 28', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'29', N'Bàn 29', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'3', N'Bàn 03', N'DANG SU DUNG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'30', N'Bàn 30', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'31', N'Bàn 31', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'32', N'Bàn 32', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'33', N'Bàn 33', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'34', N'Bàn 34', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'35', N'Bàn 35', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'36', N'Bàn 36', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'37', N'Bàn 37', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'38', N'Bàn 38', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'39', N'Bàn 39', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'4', N'Bàn 04', N'DANG SU DUNG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'40', N'Bàn 40', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'41', N'Bàn 41', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'42', N'Bàn 42', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'43', N'Bàn 43', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'44', N'Bàn 44', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'45', N'Bàn 45', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'46', N'Bàn 46', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'47', N'Bàn 47', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'48', N'Bàn 48', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'49', N'Bàn 49', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'5', N'Bàn 05', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'50', N'Bàn 50', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'51', N'Bàn 51', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'52', N'Bàn 52', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'53', N'Bàn 53', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'54', N'Bàn 54', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'55', N'Bàn 55', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'56', N'Bàn 56', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'57', N'Bàn 57', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'58', N'Bàn 58', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'59', N'Bàn 59', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'6', N'Bàn 06', N'DANG SU DUNG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'60', N'Bàn 60', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'7', N'Bàn 07', N'DANG SU DUNG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'8', N'Bàn 08', N'TRONG')
INSERT [dbo].[BAN] ([MABAN], [TENBAN], [TRANGTHAI]) VALUES (N'9', N'Bàn 09', N'TRONG')
INSERT [dbo].[CHITIETHDB] ([MACTHD], [MAHDB], [MACTSP], [GIAVON], [GIABAN], [GIABANSAUKHIGIAM], [SOLUONG], [TRANGTHAI]) VALUES (N'1.01.L', N'1', N'01.L', 100000.0000, 150000.0000, 0.0000, 50, N'Hoạt động')
INSERT [dbo].[CHITIETHDB] ([MACTHD], [MAHDB], [MACTSP], [GIAVON], [GIABAN], [GIABANSAUKHIGIAM], [SOLUONG], [TRANGTHAI]) VALUES (N'1.01.M', N'1', N'01.M', 90000.0000, 130000.0000, 0.0000, 100, N'Hoạt động')
INSERT [dbo].[CHITIETHDB] ([MACTHD], [MAHDB], [MACTSP], [GIAVON], [GIABAN], [GIABANSAUKHIGIAM], [SOLUONG], [TRANGTHAI]) VALUES (N'1.01.S', N'1', N'01.S', 80000.0000, 120000.0000, 0.0000, 75, N'Không hoạt động')
INSERT [dbo].[CHITIETHDB] ([MACTHD], [MAHDB], [MACTSP], [GIAVON], [GIABAN], [GIABANSAUKHIGIAM], [SOLUONG], [TRANGTHAI]) VALUES (N'1.02.L', N'1', N'02.L', 110000.0000, 170000.0000, 0.0000, 30, N'Hoạt động')
INSERT [dbo].[CHITIETHDB] ([MACTHD], [MAHDB], [MACTSP], [GIAVON], [GIABAN], [GIABANSAUKHIGIAM], [SOLUONG], [TRANGTHAI]) VALUES (N'1.02.M', N'1', N'02.M', 95000.0000, 140000.0000, 0.0000, 80, N'Hoạt động')
INSERT [dbo].[CHITIETHDB] ([MACTHD], [MAHDB], [MACTSP], [GIAVON], [GIABAN], [GIABANSAUKHIGIAM], [SOLUONG], [TRANGTHAI]) VALUES (N'1.02.S', N'1', N'02.S', 85000.0000, 130000.0000, 0.0000, 60, N'Hoạt động')
INSERT [dbo].[CHITIETHDB] ([MACTHD], [MAHDB], [MACTSP], [GIAVON], [GIABAN], [GIABANSAUKHIGIAM], [SOLUONG], [TRANGTHAI]) VALUES (N'2.01.L', N'2', N'01.L', 120000.0000, 180000.0000, 0.0000, 20, N'Không hoạt động')
INSERT [dbo].[CHITIETHDB] ([MACTHD], [MAHDB], [MACTSP], [GIAVON], [GIABAN], [GIABANSAUKHIGIAM], [SOLUONG], [TRANGTHAI]) VALUES (N'2.01.M', N'2', N'01.M', 100000.0000, 150000.0000, 0.0000, 70, N'Hoạt động')
INSERT [dbo].[CHITIETHDB] ([MACTHD], [MAHDB], [MACTSP], [GIAVON], [GIABAN], [GIABANSAUKHIGIAM], [SOLUONG], [TRANGTHAI]) VALUES (N'2.01.S', N'2', N'01.S', 90000.0000, 140000.0000, 0.0000, 90, N'Hoạt động')
INSERT [dbo].[CHITIETHDB] ([MACTHD], [MAHDB], [MACTSP], [GIAVON], [GIABAN], [GIABANSAUKHIGIAM], [SOLUONG], [TRANGTHAI]) VALUES (N'2.02.L', N'2', N'02.L', 130000.0000, 200000.0000, 0.0000, 40, N'Hoạt động')
INSERT [dbo].[CHITIETSANPHAM] ([MACTSP], [MASP], [MASIZE], [SOLUONG], [MOTA], [GIABAN], [GIAVON], [TRANGTHAI]) VALUES (N'01.L', N'01', N'L', 8000, N'Sản phẩm 01 Size L 123', 45000.0000, 35000.0000, N'Không hoạt động')
INSERT [dbo].[CHITIETSANPHAM] ([MACTSP], [MASP], [MASIZE], [SOLUONG], [MOTA], [GIABAN], [GIAVON], [TRANGTHAI]) VALUES (N'01.M', N'01', N'M', 1000, N'Sản phẩm 01 Size M', 50000.0000, 35000.0000, N'Không hoạt động')
INSERT [dbo].[CHITIETSANPHAM] ([MACTSP], [MASP], [MASIZE], [SOLUONG], [MOTA], [GIABAN], [GIAVON], [TRANGTHAI]) VALUES (N'01.S', N'01', N'S', 1000, N'Sản phẩm 01 Size S', 40000.0000, 30000.0000, N'Hoạt động')
INSERT [dbo].[CHITIETSANPHAM] ([MACTSP], [MASP], [MASIZE], [SOLUONG], [MOTA], [GIABAN], [GIAVON], [TRANGTHAI]) VALUES (N'02.L', N'02', N'L', 5000, N'Sản phẩm 02 Size L', 60000.0000, 32000.0000, N'Hoạt động')
INSERT [dbo].[CHITIETSANPHAM] ([MACTSP], [MASP], [MASIZE], [SOLUONG], [MOTA], [GIABAN], [GIAVON], [TRANGTHAI]) VALUES (N'02.M', N'02', N'M', 3500, N'Sản phẩm 02 Size M', 50000.0000, 27000.0000, N'Hoạt động')
INSERT [dbo].[CHITIETSANPHAM] ([MACTSP], [MASP], [MASIZE], [SOLUONG], [MOTA], [GIABAN], [GIAVON], [TRANGTHAI]) VALUES (N'02.S', N'02', N'S', 5000, N'Sản phẩm 02 Size S', 40000.0000, 30000.0000, N'Hoạt động')
INSERT [dbo].[CHITIETSANPHAM] ([MACTSP], [MASP], [MASIZE], [SOLUONG], [MOTA], [GIABAN], [GIAVON], [TRANGTHAI]) VALUES (N'03.L', N'03', N'L', 1, N'', 200000.0000, 100000.0000, N'Hoạt động')
INSERT [dbo].[CHITIETSANPHAM] ([MACTSP], [MASP], [MASIZE], [SOLUONG], [MOTA], [GIABAN], [GIAVON], [TRANGTHAI]) VALUES (N'03.M', N'03', N'M', 1900, N'Sản phẩm 03 Size M', 50000.0000, 40000.0000, N'Hoạt động')
INSERT [dbo].[CHITIETSANPHAM] ([MACTSP], [MASP], [MASIZE], [SOLUONG], [MOTA], [GIABAN], [GIAVON], [TRANGTHAI]) VALUES (N'03.S', N'03', N'S', 3000, N'Sản phẩm 03 Size S', 40000.0000, 30000.0000, N'Hoạt động')
INSERT [dbo].[CHITIETSANPHAM] ([MACTSP], [MASP], [MASIZE], [SOLUONG], [MOTA], [GIABAN], [GIAVON], [TRANGTHAI]) VALUES (N'04.L', N'04', N'L', 2000000, N'Sản phẩm 04 Size L', 60000.0000, 40000.0000, N'Hoạt động')
INSERT [dbo].[CHITIETSANPHAM] ([MACTSP], [MASP], [MASIZE], [SOLUONG], [MOTA], [GIABAN], [GIAVON], [TRANGTHAI]) VALUES (N'04.M', N'04', N'M', 255000, N'Sản phẩm 04 Size M', 50000.0000, 35000.0000, N'Hoạt động')
INSERT [dbo].[CHITIETSANPHAM] ([MACTSP], [MASP], [MASIZE], [SOLUONG], [MOTA], [GIABAN], [GIAVON], [TRANGTHAI]) VALUES (N'04.S', N'04', N'S', 1000, N'Sản phẩm 04 Size S', 40000.0000, 30000.0000, N'Hoạt động')
INSERT [dbo].[CHITIETSANPHAM] ([MACTSP], [MASP], [MASIZE], [SOLUONG], [MOTA], [GIABAN], [GIAVON], [TRANGTHAI]) VALUES (N'05.L', N'05', N'L', 20, N'Nước ép cam Size S', 12000.0000, 20000.0000, N'Hoạt động')
INSERT [dbo].[CHITIETSANPHAM] ([MACTSP], [MASP], [MASIZE], [SOLUONG], [MOTA], [GIABAN], [GIAVON], [TRANGTHAI]) VALUES (N'05.M', N'05', N'M', 5000, N'Nước ép cam Size M', 10000.0000, 30000.0000, N'Hoạt động')
INSERT [dbo].[CHITIETSANPHAM] ([MACTSP], [MASP], [MASIZE], [SOLUONG], [MOTA], [GIABAN], [GIAVON], [TRANGTHAI]) VALUES (N'05.S', N'05', N'S', 1000, N'Sản phẩm 05 Size S', 15000.0000, 10000.0000, N'Hoạt động')
INSERT [dbo].[CHITIETSANPHAM] ([MACTSP], [MASP], [MASIZE], [SOLUONG], [MOTA], [GIABAN], [GIAVON], [TRANGTHAI]) VALUES (N'06.L', N'06', N'L', 100000, N'Trà đá Size lớn ', 10000.0000, 20000.0000, N'Hoạt động')
INSERT [dbo].[CHITIETSANPHAM] ([MACTSP], [MASP], [MASIZE], [SOLUONG], [MOTA], [GIABAN], [GIAVON], [TRANGTHAI]) VALUES (N'06.M', N'06', N'M', 12000, N'Trà đá Size M', 12.0000, 24.0000, N'Hoạt động')
INSERT [dbo].[CHITIETSANPHAM] ([MACTSP], [MASP], [MASIZE], [SOLUONG], [MOTA], [GIABAN], [GIAVON], [TRANGTHAI]) VALUES (N'08.M', N'08', N'M', 12, N'...', 2.0000, 13.0000, N'Hoạt động')
INSERT [dbo].[CHITIETSANPHAM] ([MACTSP], [MASP], [MASIZE], [SOLUONG], [MOTA], [GIABAN], [GIAVON], [TRANGTHAI]) VALUES (N'09.S', N'09', N'S', 100, N'Sản Phẩm ABC', 2132.0000, 12423521.0000, N'Hoạt động')
INSERT [dbo].[HOADONBAN] ([MAHDB], [MAKH], [TONGTIENTHANHTOAN], [MANV_LAP], [NGAYLAPHD], [TRANGTHAI], [GHICHU]) VALUES (N'1', N'00001', 53600000.0000, N'00001', CAST(N'2023-09-04 00:00:00.000' AS DateTime), N'Hoạt động', NULL)
INSERT [dbo].[HOADONBAN] ([MAHDB], [MAKH], [TONGTIENTHANHTOAN], [MANV_LAP], [NGAYLAPHD], [TRANGTHAI], [GHICHU]) VALUES (N'2', N'00002', 34700000.0000, N'00002', CAST(N'2023-09-01 00:00:00.000' AS DateTime), N'Hoạt động', NULL)
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [DIACHI], [SDT], [NGAYSINH], [TRANGTHAI]) VALUES (N'00001', N'Nguyễn Văn A', N'123 Đường Trần Hưng Đạo, Quận 1, TP. Hồ Chí Minh', N'0123456789', CAST(N'1990-01-01 00:00:00.000' AS DateTime), N'Hoạt động')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [DIACHI], [SDT], [NGAYSINH], [TRANGTHAI]) VALUES (N'00002', N'Trần Thị B', N'456 Đường Nguyễn Huệ, Quận 3, TP. Hồ Chí Minh', N'0234567890', CAST(N'1995-02-02 00:00:00.000' AS DateTime), N'Hoạt động')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [DIACHI], [SDT], [NGAYSINH], [TRANGTHAI]) VALUES (N'00003', N'Lê Văn C', N'789 Đường Lê Lợi, Quận 5, TP. Hồ Chí Minh', N'0345678901', CAST(N'2000-03-03 00:00:00.000' AS DateTime), N'Hoạt động')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [DIACHI], [SDT], [NGAYSINH], [TRANGTHAI]) VALUES (N'00004', N'Phạm Thị D', N'234 Đường Phan Chu Trinh, Quận 10, TP. Hồ Chí Minh', N'0456789012', CAST(N'1985-04-04 00:00:00.000' AS DateTime), N'Hoạt động')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [DIACHI], [SDT], [NGAYSINH], [TRANGTHAI]) VALUES (N'00005', N'Võ Văn E', N'567 Đường Lý Tự Trọng, Quận 1, TP. Hồ Chí Minh', N'0567890123', CAST(N'1997-05-05 00:00:00.000' AS DateTime), N'Hoạt động')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [DIACHI], [SDT], [NGAYSINH], [TRANGTHAI]) VALUES (N'00006', N'Trần Văn F', N'890 Đường Bế Văn Cấm, Quận 7, TP. Hồ Chí Minh', N'0678901234', CAST(N'1992-06-06 00:00:00.000' AS DateTime), N'Hoạt động')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [DIACHI], [SDT], [NGAYSINH], [TRANGTHAI]) VALUES (N'00007', N'Nguyễn Thị G', N'345 Đường Ngô Tất Tố, Quận Bình Thạnh, TP. Hồ Chí Minh', N'0789012345', CAST(N'1998-07-07 00:00:00.000' AS DateTime), N'Hoạt động')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [DIACHI], [SDT], [NGAYSINH], [TRANGTHAI]) VALUES (N'00008', N'Lê Thị H', N'678 Đường Phạm Hùng, Quận 8, TP. Hồ Chí Minh', N'0890123456', CAST(N'1993-08-08 00:00:00.000' AS DateTime), N'Hoạt động')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [DIACHI], [SDT], [NGAYSINH], [TRANGTHAI]) VALUES (N'00009', N'Phạm Văn I', N'901 Đường Nguyễn Văn Cừ, Quận 5, TP. Hồ Chí Minh', N'0901234567', CAST(N'2002-09-09 00:00:00.000' AS DateTime), N'Hoạt động')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [DIACHI], [SDT], [NGAYSINH], [TRANGTHAI]) VALUES (N'00010', N'Võ Thị K', N'123 Đường Lê Duẩn, Quận 1, TP. Hồ Chí Minh', N'0912345678', CAST(N'1991-10-10 00:00:00.000' AS DateTime), N'Hoạt động')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [DIACHI], [SDT], [NGAYSINH], [TRANGTHAI]) VALUES (N'00011', N'Đỗ Văn L', N'456 Đường Võ Văn Kiệt, Quận 4, TP. Hồ Chí Minh', N'0923456789', CAST(N'1996-11-11 00:00:00.000' AS DateTime), N'Hoạt động')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [DIACHI], [SDT], [NGAYSINH], [TRANGTHAI]) VALUES (N'00012', N'Lê Thị M', N'789 Đường Hàm Nghi, Quận 1, TP. Hồ Chí Minh', N'0934567890', CAST(N'1989-12-12 00:00:00.000' AS DateTime), N'Hoạt động')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [DIACHI], [SDT], [NGAYSINH], [TRANGTHAI]) VALUES (N'00013', N'Nguyễn Văn N', N'234 Đường Nguyễn Thái Học, Quận 3, TP. Hồ Chí Minh', N'0345678901', CAST(N'1994-01-13 00:00:00.000' AS DateTime), N'Hoạt động')
INSERT [dbo].[NHACC] ([MANCC], [TENNCC], [SDT], [DIACHI], [MOTA], [TRANGTHAI]) VALUES (N'001', N'Nhà cung cấp A', N'0987654321', N'Hà Nội', N'Cung cấp thức uống giải khát', N'Hoạt động')
INSERT [dbo].[NHACC] ([MANCC], [TENNCC], [SDT], [DIACHI], [MOTA], [TRANGTHAI]) VALUES (N'002', N'Nhà cung cấp B', N'0123456789', N'TP. HCM', N'Cung cấp nước ngọt', N'Hoạt động')
INSERT [dbo].[NHACC] ([MANCC], [TENNCC], [SDT], [DIACHI], [MOTA], [TRANGTHAI]) VALUES (N'003', N'Nhà cung cấp C', N'0912345678', N'Đà Nẵng', N'Cung cấp trà sữa', N'Không hoạt động')
INSERT [dbo].[NHACC] ([MANCC], [TENNCC], [SDT], [DIACHI], [MOTA], [TRANGTHAI]) VALUES (N'004', N'Nhà cung cấp D', N'0965432198', N'Hải Phòng', N'Cung cấp nước ép trái cây', N'Hoạt động')
INSERT [dbo].[NHACC] ([MANCC], [TENNCC], [SDT], [DIACHI], [MOTA], [TRANGTHAI]) VALUES (N'005', N'Nhà cung cấp E', N'0888888888', N'Bắc Ninh', N'Cung cấp bia', N'Không hoạt động')
INSERT [dbo].[NHACC] ([MANCC], [TENNCC], [SDT], [DIACHI], [MOTA], [TRANGTHAI]) VALUES (N'006', N'Nhà cung cấp F', N'0909090909', N'Hưng Yên', N'Cung cấp cà phê', N'Hoạt động')
INSERT [dbo].[NHACC] ([MANCC], [TENNCC], [SDT], [DIACHI], [MOTA], [TRANGTHAI]) VALUES (N'007', N'Nhà cung cấp G', N'0911111111', N'Quảng Ninh', N'Cung cấp sinh tố', N'Không hoạt động')
INSERT [dbo].[NHACC] ([MANCC], [TENNCC], [SDT], [DIACHI], [MOTA], [TRANGTHAI]) VALUES (N'008', N'Nhà cung cấp H', N'0988888888', N'Thanh Hóa', N'Cung cấp rượu', N'Xoá')
INSERT [dbo].[NHACC] ([MANCC], [TENNCC], [SDT], [DIACHI], [MOTA], [TRANGTHAI]) VALUES (N'009', N'Nhà cung cấp I', N'0977777777', N'Nghệ An', N'Cung cấp nước suối', N'Hoạt động')
INSERT [dbo].[NHACC] ([MANCC], [TENNCC], [SDT], [DIACHI], [MOTA], [TRANGTHAI]) VALUES (N'010', N'Nhà cung cấp J', N'0169696969', N'Bình Định', N'Cung cấp nước trái cây', N'Không hoạt động')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [DIACHI], [SDT], [CHUCVU], [NGAYVAOLAM], [GIOITINH], [NGAYSINH], [TRANGTHAI]) VALUES (N'00001', N'Nguyễn Văn A 123', N'123 Đường Phan Xích Long, Quận Phú Nhuận, TP Hồ Chí Minh', N'0987654321', N'Nhân viên kinh doanh', CAST(N'2020-01-01 00:00:00.000' AS DateTime), N'Nam', CAST(N'1990-01-01 00:00:00.000' AS DateTime), N'Hoạt động')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [DIACHI], [SDT], [CHUCVU], [NGAYVAOLAM], [GIOITINH], [NGAYSINH], [TRANGTHAI]) VALUES (N'00002', N'Trần Thị B 123', N'456 Đường Nguyễn Thị Minh Khai, Quận 1, TP Hồ Chí Minh', N'0123456789', N'Trưởng phòng kế toán', CAST(N'2018-05-01 00:00:00.000' AS DateTime), N'Nữ', CAST(N'1985-02-14 00:00:00.000' AS DateTime), N'Hoạt động')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [DIACHI], [SDT], [CHUCVU], [NGAYVAOLAM], [GIOITINH], [NGAYSINH], [TRANGTHAI]) VALUES (N'00003', N'Lê Văn C 123', N'789 Đường Lê Văn Sỹ, Quận 3, TP Hồ Chí Minh', N'0909090909', N'Trưởng phòng nhân sự', CAST(N'2017-03-01 00:00:00.000' AS DateTime), N'Nam', CAST(N'2000-05-20 00:00:00.000' AS DateTime), N'Hoạt động')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [DIACHI], [SDT], [CHUCVU], [NGAYVAOLAM], [GIOITINH], [NGAYSINH], [TRANGTHAI]) VALUES (N'00004', N'Phạm Thị D 123', N'111 Đường Nguyễn Thị Thập, Quận 7, TP Hồ Chí Minh', N'0777777777', N'Nhân viên kỹ thuật', CAST(N'2021-02-10 00:00:00.000' AS DateTime), N'Nữ', CAST(N'1993-11-08 00:00:00.000' AS DateTime), N'Không hoạt động')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [DIACHI], [SDT], [CHUCVU], [NGAYVAOLAM], [GIOITINH], [NGAYSINH], [TRANGTHAI]) VALUES (N'00005', N'Võ Văn E 123', N'222 Đường Phạm Văn Đồng, Quận Tân Bình, TP Hồ Chí Minh', N'0868686868', N'Nhân viên marketing', CAST(N'2019-07-01 00:00:00.000' AS DateTime), N'Nam', CAST(N'1988-07-19 00:00:00.000' AS DateTime), N'Hoạt động')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [DIACHI], [SDT], [CHUCVU], [NGAYVAOLAM], [GIOITINH], [NGAYSINH], [TRANGTHAI]) VALUES (N'00006', N'Trần Văn F 123', N'333 Đường Nguyễn Cửu Đàm, Quận Bình Thạnh, TP Hồ Chí Minh', N'0912345678', N'Trưởng phòng kinh doanh', CAST(N'2016-09-15 00:00:00.000' AS DateTime), N'Nữ', CAST(N'1991-12-25 00:00:00.000' AS DateTime), N'Không hoạt động')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [DIACHI], [SDT], [CHUCVU], [NGAYVAOLAM], [GIOITINH], [NGAYSINH], [TRANGTHAI]) VALUES (N'00007', N'Nguyễn Thị G 123', N'444 Đường Huỳnh Thúc Kháng, Quận 1, TP Hồ Chí Minh', N'0999999999', N'Nhân viên IT', CAST(N'2022-01-01 00:00:00.000' AS DateTime), N'Nam', CAST(N'2002-04-03 00:00:00.000' AS DateTime), N'Hoạt động')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [DIACHI], [SDT], [CHUCVU], [NGAYVAOLAM], [GIOITINH], [NGAYSINH], [TRANGTHAI]) VALUES (N'00008', N'Lê Thị H 123', N'555 Đường Trần Quang Khải, Quận 5, TP Hồ Chí Minh', N'0822222222', N'Trưởng phòng kế hoạch', CAST(N'2015-11-01 00:00:00.000' AS DateTime), N'Nữ', CAST(N'1986-09-27 00:00:00.000' AS DateTime), N'Hoạt động')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [DIACHI], [SDT], [CHUCVU], [NGAYVAOLAM], [GIOITINH], [NGAYSINH], [TRANGTHAI]) VALUES (N'00009', N'Phạm Văn I 123', N'666 Đường Nguyễn Đình Chiểu, Quận 3, TP Hồ Chí Minh', N'0888888888', N'Nhân viên tài chính', CAST(N'2020-06-01 00:00:00.000' AS DateTime), N'Nam', CAST(N'1995-06-11 00:00:00.000' AS DateTime), N'Không hoạt động')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [LINK_IMG], [DONVITINH], [MOTA], [TRANGTHAI], [MANCC]) VALUES (N'01', N'Trà sữa truyền thống 123', N'D:\HocTap\Winform_C#\9_12_QuanLyQuanCaPhe\image\trasua.jpg', N'ly', N'Trà sữa đen dai và thơm ngon kèm với bột béo 123 ...', N'Không hoạt động', N'003')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [LINK_IMG], [DONVITINH], [MOTA], [TRANGTHAI], [MANCC]) VALUES (N'02', N'Coca Cola 123 456', N'D:\HocTap\Winform_C#\9_12_QuanLyQuanCaPhe\image\cocacola.png', N'lon', N'Nước giải khát có ga ...', N'Hoạt động', N'001')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [LINK_IMG], [DONVITINH], [MOTA], [TRANGTHAI], [MANCC]) VALUES (N'03', N'Pepsi', N'D:\HocTap\Winform_C#\9_12_QuanLyQuanCaPhe\image\pepsi.jpg', N'ly', N'Nước giải khát có ga ', N'Hoạt động', N'001')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [LINK_IMG], [DONVITINH], [MOTA], [TRANGTHAI], [MANCC]) VALUES (N'04', N'Sữa tươi', N'D:\HocTap\Winform_C#\9_12_QuanLyQuanCaPhe\image\suatuoi.jpg', N'lọ', N'Sữa tươi nguyên chất tuyệt đỉnh', N'Hoạt động', N'001')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [LINK_IMG], [DONVITINH], [MOTA], [TRANGTHAI], [MANCC]) VALUES (N'05', N'Nước ép cam', N'D:\HocTap\Winform_C#\9_12_QuanLyQuanCaPhe\image\nuocepcam.png', N'chai', N'Nước ép tươi nguyên chất cam', N'Hoạt động', N'001')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [LINK_IMG], [DONVITINH], [MOTA], [TRANGTHAI], [MANCC]) VALUES (N'06', N'Trà đá', N'D:\HocTap\Winform_C#\9_12_QuanLyQuanCaPhe\image\trada.jpg', N'lít', N'Trà đá thơm ngon lạnh', N'Hoạt động', N'001')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [LINK_IMG], [DONVITINH], [MOTA], [TRANGTHAI], [MANCC]) VALUES (N'07', N'07', NULL, N'lọ', N'Nước uống để chữa nóng', N'Hoạt động', N'001')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [LINK_IMG], [DONVITINH], [MOTA], [TRANGTHAI], [MANCC]) VALUES (N'08', N'Trà sữa khoai môn', N'https://example.com/trasuakhoaimon.jpg', N'ly', N'Trà sữa có vị khoai môn độc đáo', N'Hoạt động', N'001')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [LINK_IMG], [DONVITINH], [MOTA], [TRANGTHAI], [MANCC]) VALUES (N'09', N'Trà xanh', N'https://example.com/traxanh.jpg', N'chai', N'Trà xanh tinh tế cho gương mặt', N'Xoá', N'001')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [LINK_IMG], [DONVITINH], [MOTA], [TRANGTHAI], [MANCC]) VALUES (N'10', N'Soda chanh', N'https://example.com/sodachanh.jpg', N'chai', N'Nước giải khát thanh mát', N'Hoạt động', N'001')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [LINK_IMG], [DONVITINH], [MOTA], [TRANGTHAI], [MANCC]) VALUES (N'11', N'sản phẩm A', NULL, N'lọ', N'không biết mô tả gì về sản phẩm này luôn á', N'Hoạt động', N'001')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [LINK_IMG], [DONVITINH], [MOTA], [TRANGTHAI], [MANCC]) VALUES (N'12', N'Trà đào cam sả', N'D:\HocTap\Winform_C#\9_12_QuanLyQuanCaPhe\image\Screenshot_2023-02-25_19-29-52.png', N'chai', N'Trà đào cam sả thơm quá ....', N'Hoạt động', N'002')
INSERT [dbo].[SIZE] ([MASIZE], [MOTA], [TRANGTHAI]) VALUES (N'L', N'Size lớn', 1)
INSERT [dbo].[SIZE] ([MASIZE], [MOTA], [TRANGTHAI]) VALUES (N'M', N'Size trung bình', 1)
INSERT [dbo].[SIZE] ([MASIZE], [MOTA], [TRANGTHAI]) VALUES (N'S', N'Size nhỏ', 1)
ALTER TABLE [dbo].[KHUYENMAI] ADD  CONSTRAINT [DF__KHUYENMAI__NGAYT__2A4B4B5E]  DEFAULT (getdate()) FOR [NGAYBATDAU]
GO
ALTER TABLE [dbo].[KHUYENMAI] ADD  CONSTRAINT [DF__KHUYENMAI__TRANG__2B3F6F97]  DEFAULT ((0)) FOR [TRANGTHAI]
GO
ALTER TABLE [dbo].[CHITIETHDB]  WITH CHECK ADD  CONSTRAINT [FK__CHITIETHD__MAHDB__42ACE4D4] FOREIGN KEY([MAHDB])
REFERENCES [dbo].[HOADONBAN] ([MAHDB])
GO
ALTER TABLE [dbo].[CHITIETHDB] CHECK CONSTRAINT [FK__CHITIETHD__MAHDB__42ACE4D4]
GO
ALTER TABLE [dbo].[CHITIETHDN]  WITH CHECK ADD  CONSTRAINT [FK__CHITIETHD__MAHDN__4C364F0E] FOREIGN KEY([MAHDN])
REFERENCES [dbo].[HOADONNHAP] ([MAHDN])
GO
ALTER TABLE [dbo].[CHITIETHDN] CHECK CONSTRAINT [FK__CHITIETHD__MAHDN__4C364F0E]
GO
ALTER TABLE [dbo].[CHITIETSANPHAM]  WITH CHECK ADD  CONSTRAINT [FK__CHITIETSA__MASIZ__6E01572D] FOREIGN KEY([MASIZE])
REFERENCES [dbo].[SIZE] ([MASIZE])
GO
ALTER TABLE [dbo].[CHITIETSANPHAM] CHECK CONSTRAINT [FK__CHITIETSA__MASIZ__6E01572D]
GO
ALTER TABLE [dbo].[CHITIETSANPHAM]  WITH CHECK ADD  CONSTRAINT [FK__CHITIETSAN__MASP__7E37BEF6] FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([MASP])
GO
ALTER TABLE [dbo].[CHITIETSANPHAM] CHECK CONSTRAINT [FK__CHITIETSAN__MASP__7E37BEF6]
GO
ALTER TABLE [dbo].[HOADONBAN]  WITH CHECK ADD  CONSTRAINT [FK__HOADONBAN__MAKH__2CBDA3B5] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHACHHANG] ([MAKH])
GO
ALTER TABLE [dbo].[HOADONBAN] CHECK CONSTRAINT [FK__HOADONBAN__MAKH__2CBDA3B5]
GO
ALTER TABLE [dbo].[HOADONBAN]  WITH CHECK ADD  CONSTRAINT [FK__HOADONBAN__MANV___68487DD7] FOREIGN KEY([MANV_LAP])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[HOADONBAN] CHECK CONSTRAINT [FK__HOADONBAN__MANV___68487DD7]
GO

ALTER TABLE [dbo].[HOADONNHAP]  WITH CHECK ADD FOREIGN KEY([MANV_LAP])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD FOREIGN KEY([MANCC])
REFERENCES [dbo].[NHACC] ([MANCC])
Go